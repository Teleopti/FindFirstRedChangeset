Returns first changeset where specified testfixture is red. 
Implicitly script assumes test is green on current head.

find.cmd [PathToRepo] [ProjectContainingTestFixture] [TestFixture] [FirstKnownGreenChangeSet]

Eg
```
.\find.cmd D:\stuff\code\teleoptikWfm domaintest\teleopti.ccc.domaintest.csproj Teleopti.Ccc.DomainTest.Forecasting.ActiveAgentCountTest 333f23cae7fc82722a57f1c89594dffb6abc738b
```
