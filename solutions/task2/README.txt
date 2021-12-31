Initial Cost Estimate is $8,411.54 / month.

- Link:  https://calculator.aws/#/estimate?id=2d9cbdd29630fc08771e84b5cf4a80234d98a5a6
- Notes: Per review added storage to all EC2 instances; added Elastic IP; added DB backup (pricing calculator does not show subnets)
- Primary Items:  
  -  2x  db.r6g.8xlarge RDS database servers
  -  4x  m6g.4xlarge    application servers
  - 12x  m6g.xlarge     web servers  

Reduced Cost Estimate is $6,034.53 / month

- Link: https://calculator.aws/#/estimate?id=d66434ffacc95982cf20aa29afa418d81ed16c1c
- Changes: reduce the size of the database server to 4xlarge, and reduce number of app servers.
- Primary Items:
  - 2x  db.r6g.4xlarge RDS database servers
  - 4x  m6g.4xlarge    application servers
  - 8x  m6g.xlarge     web servers

Increased Cose Estimate: $19,525.50 / month

- Link: https://calculator.aws/#/estimate?id=e76f35b7f323d27d3726eabedf1a8daddb35bed0
- Notes: Modifications from initial estimate include increased web server count and size, increased app server count and size, larger database server, and provisioned IOPs for database server
- Primary Items:
   - Web server: increased count to 16 with larger EC2 instance (m6gd.2xlarge) and attached NVMe SSD storage
   - App server: increased count to 6  with larger EC2 instance (m6gd.8xlarge) and attached NVMe SSD storage
   - DB server:  larger EC2 instance (db.m6g.16xlarge) with provisioned IOPS
