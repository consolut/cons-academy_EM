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
				},
				"eaa72823-0ef5-4e9a-a89a-8f35eb9fe5a9": {
					"name": "UserTask Item Details"
				},
				"48423250-318b-48f7-a697-ae9300d5159c": {
					"name": "ExclusiveGateway2"
				},
				"2868aef4-0432-43b1-b3ee-c394fe3428fd": {
					"name": "ScriptTask2"
				},
				"99bdf7a0-9943-4622-a685-36ac27d288ca": {
					"name": "MailTask1"
				},
				"2328a9a5-3847-470d-9558-cb8b5984c4fd": {
					"name": "ServiceTask2"
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
				},
				"bd059c62-3748-4682-a6b1-a252305be4fe": {
					"name": "SequenceFlow8"
				},
				"68c2127b-1016-4b2a-9cdc-c0e64a23733d": {
					"name": "SequenceFlow9"
				},
				"8a781f4e-a70c-474d-9d1e-c4d036999927": {
					"name": "SequenceFlow12"
				},
				"48a028e6-fed4-4271-acd6-12c1d895a1aa": {
					"name": "SequenceFlow13"
				},
				"27d5684d-2fb6-455f-bef3-353636e27185": {
					"name": "SequenceFlow14"
				},
				"1a4b7e9b-c74d-409c-9cd7-9f631980196d": {
					"name": "SequenceFlow15"
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
		"eaa72823-0ef5-4e9a-a89a-8f35eb9fe5a9": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sales order number",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "ervisa.mema@consolut.com",
			"formReference": "/forms/MyWorkflowEM/ItemDetailsForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "itemdetailsform"
			}, {
				"key": "formRevision",
				"value": "1.0.0"
			}],
			"id": "usertask2",
			"name": "UserTask Item Details"
		},
		"48423250-318b-48f7-a697-ae9300d5159c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "8a781f4e-a70c-474d-9d1e-c4d036999927"
		},
		"2868aef4-0432-43b1-b3ee-c394fe3428fd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflowEM/GetSalesOrderItem.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"99bdf7a0-9943-4622-a685-36ac27d288ca": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "402cb3c6-a069-4a75-8c05-ef5c3ea03f55"
		},
		"2328a9a5-3847-470d-9558-cb8b5984c4fd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "Α_SalesOrder('${context.SalesOrderHeader.response.d.SalesOrder}')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Accept",
				"value": "application/json"
			}, {
				"name": "Content-Type",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
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
			"condition": "${usertasks.usertask1.last.decision==\"reject\"}",
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
			"targetRef": "eaa72823-0ef5-4e9a-a89a-8f35eb9fe5a9"
		},
		"bd059c62-3748-4682-a6b1-a252305be4fe": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "eaa72823-0ef5-4e9a-a89a-8f35eb9fe5a9",
			"targetRef": "48423250-318b-48f7-a697-ae9300d5159c"
		},
		"68c2127b-1016-4b2a-9cdc-c0e64a23733d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision==\"reject\"}",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "48423250-318b-48f7-a697-ae9300d5159c",
			"targetRef": "99bdf7a0-9943-4622-a685-36ac27d288ca"
		},
		"8a781f4e-a70c-474d-9d1e-c4d036999927": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "48423250-318b-48f7-a697-ae9300d5159c",
			"targetRef": "2868aef4-0432-43b1-b3ee-c394fe3428fd"
		},
		"48a028e6-fed4-4271-acd6-12c1d895a1aa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "99bdf7a0-9943-4622-a685-36ac27d288ca",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"27d5684d-2fb6-455f-bef3-353636e27185": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "2868aef4-0432-43b1-b3ee-c394fe3428fd",
			"targetRef": "2328a9a5-3847-470d-9558-cb8b5984c4fd"
		},
		"1a4b7e9b-c74d-409c-9cd7-9f631980196d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "2328a9a5-3847-470d-9558-cb8b5984c4fd",
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
				"d2ac0877-6904-4467-b51e-d5a36d25960f": {},
				"8a66cae7-9f56-40df-989c-dbb7e75b4802": {},
				"03785628-8a2e-434e-b6de-1361570c8e77": {},
				"3de82c14-1a63-4dc2-b8af-cbc5521cae77": {},
				"b419e63f-107f-4801-8953-49ead5a06843": {},
				"3c2d2da0-67ae-48c3-9e7a-c2a9c578a9b2": {},
				"e2bc020e-9261-4b56-ada9-fb0279546440": {},
				"e49d8f9e-5773-4600-b562-c5abcac3cca6": {},
				"061698f0-83ca-4c74-ac15-5aa1d497f33e": {},
				"86084bed-69e6-4ba9-a1eb-aa1b6f85f489": {},
				"50c40e77-06f8-4b42-899c-01ed45064990": {},
				"30e88a6f-dc63-418a-8680-cb5b3600e14e": {}
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
			"x": 1177,
			"y": 75,
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
			"points": "343.5,95 343.5,224 1188.5,224 1188.5,95",
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
			"points": "587.75,-34.875 686.4375,-34.875 686.4375,26.3125 784.625,26.3125",
			"sourceSymbol": "ea160853-4b64-4bc6-aa05-82c906b1bff7",
			"targetSymbol": "8a66cae7-9f56-40df-989c-dbb7e75b4802",
			"object": "b5d9dd31-8a1a-4254-84f6-9521fa573555"
		},
		"8a66cae7-9f56-40df-989c-dbb7e75b4802": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 734.625,
			"y": -3.6875,
			"width": 100,
			"height": 60,
			"object": "eaa72823-0ef5-4e9a-a89a-8f35eb9fe5a9"
		},
		"03785628-8a2e-434e-b6de-1361570c8e77": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "784.625,26.15625 971,26.15625",
			"sourceSymbol": "8a66cae7-9f56-40df-989c-dbb7e75b4802",
			"targetSymbol": "3de82c14-1a63-4dc2-b8af-cbc5521cae77",
			"object": "bd059c62-3748-4682-a6b1-a252305be4fe"
		},
		"3de82c14-1a63-4dc2-b8af-cbc5521cae77": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 950,
			"y": 5,
			"object": "48423250-318b-48f7-a697-ae9300d5159c"
		},
		"b419e63f-107f-4801-8953-49ead5a06843": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "971,26 971,60.8125 1047.75,60.8125 1047.75,104.625",
			"sourceSymbol": "3de82c14-1a63-4dc2-b8af-cbc5521cae77",
			"targetSymbol": "e2bc020e-9261-4b56-ada9-fb0279546440",
			"object": "68c2127b-1016-4b2a-9cdc-c0e64a23733d"
		},
		"3c2d2da0-67ae-48c3-9e7a-c2a9c578a9b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1006.5,
			"y": -133.75,
			"width": 100,
			"height": 60,
			"object": "2868aef4-0432-43b1-b3ee-c394fe3428fd"
		},
		"e2bc020e-9261-4b56-ada9-fb0279546440": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 997.75,
			"y": 74.625,
			"width": 100,
			"height": 60,
			"object": "99bdf7a0-9943-4622-a685-36ac27d288ca"
		},
		"e49d8f9e-5773-4600-b562-c5abcac3cca6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "971,26 971,-34.375 1044,-34.375 1044,-104",
			"sourceSymbol": "3de82c14-1a63-4dc2-b8af-cbc5521cae77",
			"targetSymbol": "3c2d2da0-67ae-48c3-9e7a-c2a9c578a9b2",
			"object": "8a781f4e-a70c-474d-9d1e-c4d036999927"
		},
		"061698f0-83ca-4c74-ac15-5aa1d497f33e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1047.75,104.625 1137.625,104.625 1137.625,92.5 1194.5,92.5",
			"sourceSymbol": "e2bc020e-9261-4b56-ada9-fb0279546440",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "48a028e6-fed4-4271-acd6-12c1d895a1aa"
		},
		"86084bed-69e6-4ba9-a1eb-aa1b6f85f489": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1156.5,
			"y": -133.75,
			"width": 100,
			"height": 60,
			"object": "2328a9a5-3847-470d-9558-cb8b5984c4fd"
		},
		"50c40e77-06f8-4b42-899c-01ed45064990": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1056.5,-103.75 1206.5,-103.75",
			"sourceSymbol": "3c2d2da0-67ae-48c3-9e7a-c2a9c578a9b2",
			"targetSymbol": "86084bed-69e6-4ba9-a1eb-aa1b6f85f489",
			"object": "27d5684d-2fb6-455f-bef3-353636e27185"
		},
		"30e88a6f-dc63-418a-8680-cb5b3600e14e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1206.5,-103.75 1206.5,0.875 1194.5,0.875 1194.5,92.5",
			"sourceSymbol": "86084bed-69e6-4ba9-a1eb-aa1b6f85f489",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "1a4b7e9b-c74d-409c-9cd7-9f631980196d"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 1,
			"sequenceflow": 15,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"servicetask": 2,
			"scripttask": 2,
			"mailtask": 1,
			"exclusivegateway": 2
		},
		"402cb3c6-a069-4a75-8c05-ef5c3ea03f55": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "ervisa.mema@consolut.com",
			"subject": "Rejection",
			"text": "Rejected.",
			"id": "maildefinition1"
		}
	}
}