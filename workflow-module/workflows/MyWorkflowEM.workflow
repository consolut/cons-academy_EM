{
	"contents": {
		"c2f7ff71-5c4f-4c2e-8215-f155305d3aca": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "myworkflowem.myworkflowem",
			"subject": "MyWorkflowEM",
			"name": "MyWorkflowEM",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"3b517f26-1c37-4ef2-8ea3-e502d39ff98d": {
					"name": "Approval Form"
				},
				"7e8291c6-c49e-4a5e-b627-c5744c686e8a": {
					"name": "ExclusiveGateway1"
				},
				"b55ee4c3-8852-49df-9460-c7a8198d3e46": {
					"name": "ScriptTask1"
				},
				"03bbe079-bcd4-4647-aa9f-e0119cf51b2e": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"f1871420-5f44-4157-a763-cf8f6018cf04": {
					"name": "SequenceFlow2"
				},
				"e2f35a8d-aa3a-43c9-a95d-33b380634107": {
					"name": "SequenceFlow3"
				},
				"d19891dd-cde2-40ab-afa2-2dd33d6228bc": {
					"name": "SequenceFlow4"
				},
				"df68a204-c445-4966-bd1d-e345d5645fe0": {
					"name": "SequenceFlow5"
				},
				"3275285d-49f0-43bf-8f9b-3f7b1b297790": {
					"name": "SequenceFlow6"
				},
				"b5d9dd31-8a1a-4254-84f6-9521fa573555": {
					"name": "SequenceFlow7"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"ef58228a-8d10-420c-b123-3c2e476b9918": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"3b517f26-1c37-4ef2-8ea3-e502d39ff98d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval Form",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "ervisa.mema@consolut.com",
			"formReference": "/forms/MyWorkflowEM/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Form"
		},
		"7e8291c6-c49e-4a5e-b627-c5744c686e8a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "d19891dd-cde2-40ab-afa2-2dd33d6228bc"
		},
		"b55ee4c3-8852-49df-9460-c7a8198d3e46": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflowEM/CreateSalesOrder.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"03bbe079-bcd4-4647-aa9f-e0119cf51b2e": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"f1871420-5f44-4157-a763-cf8f6018cf04": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "3b517f26-1c37-4ef2-8ea3-e502d39ff98d"
		},
		"e2f35a8d-aa3a-43c9-a95d-33b380634107": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "3b517f26-1c37-4ef2-8ea3-e502d39ff98d",
			"targetRef": "7e8291c6-c49e-4a5e-b627-c5744c686e8a"
		},
		"d19891dd-cde2-40ab-afa2-2dd33d6228bc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "7e8291c6-c49e-4a5e-b627-c5744c686e8a",
			"targetRef": "b55ee4c3-8852-49df-9460-c7a8198d3e46"
		},
		"df68a204-c445-4966-bd1d-e345d5645fe0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "b55ee4c3-8852-49df-9460-c7a8198d3e46",
			"targetRef": "03bbe079-bcd4-4647-aa9f-e0119cf51b2e"
		},
		"3275285d-49f0-43bf-8f9b-3f7b1b297790": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"Decline\"}",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "7e8291c6-c49e-4a5e-b627-c5744c686e8a",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"b5d9dd31-8a1a-4254-84f6-9521fa573555": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "03bbe079-bcd4-4647-aa9f-e0119cf51b2e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"92ff12a9-43c9-43be-910b-f93badfa586c": {},
				"ec0f87b0-9274-4782-8ba4-31188ac23d25": {},
				"081af19a-2bc9-4910-af00-1ec9427ee229": {},
				"e23eb019-b1f5-467b-832c-b9cf385a20f6": {},
				"9500f439-bf53-4c18-a789-2efb59bb7346": {},
				"62510e1d-368d-467b-be71-74d291c8e34b": {},
				"aabfb101-c81a-4580-a229-d0e8a16968e8": {},
				"5e504fbf-d4a0-4b31-814e-de9a16ee67b7": {},
				"ea160853-4b64-4bc6-aa05-82c906b1bff7": {},
				"d2ac0877-6904-4467-b51e-d5a36d25960f": {}
			}
		},
		"ef58228a-8d10-420c-b123-3c2e476b9918": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflowEM/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 98,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 931,
			"y": 70,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"92ff12a9-43c9-43be-910b-f93badfa586c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 169,
			"y": 75,
			"width": 100,
			"height": 60,
			"object": "3b517f26-1c37-4ef2-8ea3-e502d39ff98d"
		},
		"ec0f87b0-9274-4782-8ba4-31188ac23d25": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "114,110.5 169.5,110.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "92ff12a9-43c9-43be-910b-f93badfa586c",
			"object": "f1871420-5f44-4157-a763-cf8f6018cf04"
		},
		"081af19a-2bc9-4910-af00-1ec9427ee229": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "219,105 297.25,105 297.25,91 346,91",
			"sourceSymbol": "92ff12a9-43c9-43be-910b-f93badfa586c",
			"targetSymbol": "e23eb019-b1f5-467b-832c-b9cf385a20f6",
			"object": "e2f35a8d-aa3a-43c9-a95d-33b380634107"
		},
		"e23eb019-b1f5-467b-832c-b9cf385a20f6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 325,
			"y": 70,
			"object": "7e8291c6-c49e-4a5e-b627-c5744c686e8a"
		},
		"9500f439-bf53-4c18-a789-2efb59bb7346": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "346,91 346,-134.25",
			"sourceSymbol": "e23eb019-b1f5-467b-832c-b9cf385a20f6",
			"targetSymbol": "62510e1d-368d-467b-be71-74d291c8e34b",
			"object": "d19891dd-cde2-40ab-afa2-2dd33d6228bc"
		},
		"62510e1d-368d-467b-be71-74d291c8e34b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 296,
			"y": -166.25,
			"width": 100,
			"height": 64,
			"object": "b55ee4c3-8852-49df-9460-c7a8198d3e46"
		},
		"aabfb101-c81a-4580-a229-d0e8a16968e8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "346,-135.0625 467.125,-135.0625 467.125,-34.0625 587.75,-34.0625",
			"sourceSymbol": "62510e1d-368d-467b-be71-74d291c8e34b",
			"targetSymbol": "ea160853-4b64-4bc6-aa05-82c906b1bff7",
			"object": "df68a204-c445-4966-bd1d-e345d5645fe0"
		},
		"5e504fbf-d4a0-4b31-814e-de9a16ee67b7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "343.5,92.5 942.5,92.5",
			"sourceSymbol": "e23eb019-b1f5-467b-832c-b9cf385a20f6",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "3275285d-49f0-43bf-8f9b-3f7b1b297790"
		},
		"ea160853-4b64-4bc6-aa05-82c906b1bff7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 537.75,
			"y": -64.875,
			"width": 100,
			"height": 60,
			"object": "03bbe079-bcd4-4647-aa9f-e0119cf51b2e"
		},
		"d2ac0877-6904-4467-b51e-d5a36d25960f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "587.75,-34.875 784.625,-34.875 784.625,87.5 948.5,87.5",
			"sourceSymbol": "ea160853-4b64-4bc6-aa05-82c906b1bff7",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "b5d9dd31-8a1a-4254-84f6-9521fa573555"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		}
	}
}