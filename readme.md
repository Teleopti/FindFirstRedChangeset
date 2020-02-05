Returns the changeset where a specified test fixture turned red
(implicitly assumes test is red on current head).

find.cmd [PathToRepo] [ProjectContainingTestFixture] [TestFixture] [FirstKnownGreenChangeSet]

Eg
```
.\find.cmd D:\stuff\code\teleoptikWfm domaintest\teleopti.ccc.domaintest.csproj Teleopti.Ccc.DomainTest.Forecasting.ActiveAgentCountTest 333f23cae7fc82722a57f1c89594dffb6abc738b
```
