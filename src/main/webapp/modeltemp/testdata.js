/**
 * 元数据
 */
var testdata =
    {
        "DataSources": {
            "name": "数据源",
            "index": "DataSources",
            "type": "DataSources",
            sons:
                {
                    "CSVLoader": {
                        "name": "CSV数据源",
                        "index": "CSVLoader",
                        "type": "CSVLoader",
                        "properties": {
                            "id": {
                                "des": "id"
                            },
                            "name": {
                                "des": "文件名称"
                            },
                            "path": {
                                "des": "文件路径"
                            }
                        },
                        sons:null
                    },

                    "TXTLoader": {
                        "name": "TXT数据源",
                        "index": "TXTLoader",
                        "type": "TXTLoader",
                        "properties": {
                            "id": {
                                "des": "id"
                            },
                            "name": {
                                "des": "文件名称"
                            },
                            "path": {
                                "des": "文件路径"
                            }
                        },
                        sons:null
                    }
                }

        },
        "DataSaver":{
            "name": "数据保存",
            "index": "DataSaver",
            "type": "DataSaver",
            sons:
                {
                    "CSVSaver": {
                        "name": "CSV数据Saver",
                        "index": "CSVSaver",
                        "type": "CSVSaver",
                        "properties": {
                            "id": {
                                "des": "id"
                            },
                            "name": {
                                "des": "文件名称"
                            },
                            "path": {
                                "des": "保存路径"
                            }
                        },
                        sons:null
                    }
                }

        },
        "Algorithm":{
            "name": "算法",
            "index": "Algorithm",
            "type": "Algorithm",
            sons:
                {
            		"Association":{
                        "name": "关联规则",
                        "index": "Association",
                        "type": "Association",
                        sons:{
                            "Apriori": {
                                "name": "Apriori",
                                "index": "Apriori",
                                "type": "Apriori",
                                "properties": {
                                    "id": {
                                        "des": "id"
                                    },
                                    "name": {
                                        "des": "文件名称"
                                    },
                                    "path": {
                                        "des": "保存路径"
                                    }
                                },
                                sons: null
                            },
                            "AprioriLite": {
                                "name": "Apriori Lite",
                                "index": "AprioriLite",
                                "type": "AprioriLite",
                                "properties": {
                                    "id": {
                                        "des": "id"
                                    },
                                    "name": {
                                        "des": "文件名称"
                                    },
                                    "path": {
                                        "des": "保存路径"
                                    }
                                },
                                sons: null
                            },
                            "FP-Growth": {
                                "name": "FP-Growth",
                                "index": "FP-Growth",
                                "type": "FP-Growth",
                                "properties": {
                                    "id": {
                                        "des": "id"
                                    },
                                    "name": {
                                        "des": "文件名称"
                                    },
                                    "path": {
                                        "des": "保存路径"
                                    }
                                },
                                sons: null
                            },
                            "KORD-TopKRuleDiscovery": {
                                "name": "KORD-Top K Rule Discovery",
                                "index": "TopKRuleDiscoveryy",
                                "type": "TopKRuleDiscovery",
                                "properties": {
                                    "id": {
                                        "des": "id"
                                    },
                                    "name": {
                                        "des": "文件名称"
                                    },
                                    "path": {
                                        "des": "保存路径"
                                    }
                                },
                                sons: null
                            }

                        }
                    },
                    "Classification": {
                        "name": "分类算法",
                        "index": "Classification",
                        "type": "Classification",
                        sons:
                            {
                                "CART": {
                                    "name": "CART",
                                    "index": "CART",
                                    "type": "CART",
                                    "properties": {
                                        "id": {
                                            "des": "id"
                                        },
                                        "name": {
                                            "des": "文件名称"
                                        },
                                        "path": {
                                            "des": "保存路径"
                                        }
                                    },
                                    sons: null
                                },
                                "Logistic Regression": {
                                    "name": "Logistic Regression",
                                    "index": "Logistic Regression",
                                    "type": "Logistic Regression",
                                    "properties": {
                                        "id": {
                                            "des": "id"
                                        },
                                        "name": {
                                            "des": "文件名称"
                                        },
                                        "path": {
                                            "des": "保存路径"
                                        }
                                    },
                                    sons: null
                                },

                                "Support Vector Machine": {
                                    "name": "Support Vector Machine",
                                    "index": "Support Vector Machine",
                                    "type": "Support Vector Machine",
                                    "properties": {
                                        "id": {
                                            "des": "id"
                                        },
                                        "name": {
                                            "des": "文件名称"
                                        },
                                        "path": {
                                            "des": "保存路径"
                                        }
                                    },
                                    sons: null
                                }
                            }

                    },
                    "Cluster": {
                        "name": "聚类算法",
                        "index": "Cluster",
                        "type": "Cluster",
                        sons:
                            {
                                "K-Means": {
                                    "name": "K-Means",
                                    "index": "K-Means",
                                    "type": "K-Means",
                                    "properties": {
                                        "id": {
                                            "des": "id"
                                        },
                                        "name": {
                                            "des": "文件名称"
                                        },
                                        "path": {
                                            "des": "保存路径"
                                        }
                                    },
                                    sons: null
                                },
                                "K-Medians": {
                                    "name": "K-Medians",
                                    "index": "K-Medians",
                                    "type": "K-Medians",
                                    "properties": {
                                        "id": {
                                            "des": "id"
                                        },
                                        "name": {
                                            "des": "文件名称"
                                        },
                                        "path": {
                                            "des": "保存路径"
                                        }
                                    },
                                    sons: null
                                },

                                "DBSCAN": {
                                    "name": "DBSCAN",
                                    "index": "DBSCAN",
                                    "type": "DBSCAN",
                                    "properties": {
                                        "id": {
                                            "des": "id"
                                        },
                                        "name": {
                                            "des": "文件名称"
                                        },
                                        "path": {
                                            "des": "保存路径"
                                        }
                                    },
                                    sons: null
                                }
                            }

                    }
                }

        }


    }
;
