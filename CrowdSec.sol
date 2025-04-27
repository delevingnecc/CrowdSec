// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DVulnMVP {
    enum ReportStatus { Open, Verified, Rejected }

    struct Report {
        address reporter;
        string reportHash; // IPFS CID or any hash
        uint256 timestamp;
        ReportStatus status;
    }

    address public admin;
    uint256 public reportCount;
    mapping(uint256 => Report) public reports;

    event ReportSubmitted(uint256 indexed reportId, address indexed reporter, string reportHash);
    event ReportVerified(uint256 indexed reportId);
    event ReportRejected(uint256 indexed reportId);

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function submitReport(string memory _reportHash) external {
        reportCount++;
        reports[reportCount] = Report({
            reporter: msg.sender,
            reportHash: _reportHash,
            timestamp: block.timestamp,
            status: ReportStatus.Open
        });

        emit ReportSubmitted(reportCount, msg.sender, _reportHash);
    }

    function verifyReport(uint256 _reportId) external onlyAdmin {
        require(_reportId > 0 && _reportId <= reportCount, "Invalid report ID");
        Report storage report = reports[_reportId];
        require(report.status == ReportStatus.Open, "Report is not open");

        report.status = ReportStatus.Verified;
        emit ReportVerified(_reportId);
    }

    function rejectReport(uint256 _reportId) external onlyAdmin {
        require(_reportId > 0 && _reportId <= reportCount, "Invalid report ID");
        Report storage report = reports[_reportId];
        require(report.status == ReportStatus.Open, "Report is not open");

        report.status = ReportStatus.Rejected;
        emit ReportRejected(_reportId);
    }
}

