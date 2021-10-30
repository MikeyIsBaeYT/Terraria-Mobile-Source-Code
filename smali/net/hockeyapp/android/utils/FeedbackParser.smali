.class public Lnet/hockeyapp/android/utils/FeedbackParser;
.super Ljava/lang/Object;
.source "FeedbackParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/FeedbackParser$1;,
        Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/FeedbackParser$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/hockeyapp/android/utils/FeedbackParser$1;

    .prologue
    .line 50
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/FeedbackParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/FeedbackParser;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;->INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;

    return-object v0
.end method


# virtual methods
.method public parseFeedbackResponse(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .locals 38
    .param p1, "feedbackResponseJson"    # Ljava/lang/String;

    .prologue
    .line 74
    const/16 v16, 0x0

    .line 75
    .local v16, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    const/4 v10, 0x0

    .line 76
    .local v10, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    if-eqz p1, :cond_2

    .line 78
    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v23, "jsonObject":Lorg/json/JSONObject;
    const-string v36, "feedback"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 81
    .local v15, "feedbackObject":Lorg/json/JSONObject;
    new-instance v11, Lnet/hockeyapp/android/objects/Feedback;

    invoke-direct {v11}, Lnet/hockeyapp/android/objects/Feedback;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    .line 84
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .local v11, "feedback":Lnet/hockeyapp/android/objects/Feedback;
    :try_start_1
    const-string v36, "messages"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 85
    .local v25, "messagesArray":Lorg/json/JSONArray;
    const/16 v24, 0x0

    .line 87
    .local v24, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/4 v14, 0x0

    .line 88
    .local v14, "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_1

    .line 89
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .restart local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 92
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "subject"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    .line 93
    .local v30, "subject":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v31

    .line 94
    .local v31, "text":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "oem"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v28

    .line 95
    .local v28, "oem":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "model"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    .line 96
    .local v26, "model":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "os_version"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    .line 97
    .local v29, "osVersion":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "created_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "createdAt":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 99
    .local v20, "id":I
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "token"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v32

    .line 100
    .local v32, "token":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "via"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    .line 101
    .local v35, "via":I
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "user_string"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    .line 102
    .local v34, "userString":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "clean_text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "cleanText":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v27

    .line 104
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "app_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "attachments"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 107
    .local v22, "jsonAttachments":Lorg/json/JSONArray;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 108
    .local v13, "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    if-eqz v22, :cond_0

    .line 109
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .restart local v13    # "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    .line 112
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 113
    .local v4, "attachmentId":I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "feedback_message_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    .local v5, "attachmentMessageId":I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "file_name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 115
    .local v18, "filename":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "url"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 116
    .local v33, "url":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "created_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "attachmentCreatedAt":Ljava/lang/String;
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string v37, "updated_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "attachmentUpdatedAt":Ljava/lang/String;
    new-instance v12, Lnet/hockeyapp/android/objects/FeedbackAttachment;

    invoke-direct {v12}, Lnet/hockeyapp/android/objects/FeedbackAttachment;-><init>()V

    .line 120
    .local v12, "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    invoke-virtual {v12, v4}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setId(I)V

    .line 121
    invoke-virtual {v12, v5}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setMessageId(I)V

    .line 122
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setFilename(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUrl(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v12, v3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setCreatedAt(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v12, v6}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUpdatedAt(Ljava/lang/String;)V

    .line 126
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 130
    .end local v3    # "attachmentCreatedAt":Ljava/lang/String;
    .end local v4    # "attachmentId":I
    .end local v5    # "attachmentMessageId":I
    .end local v6    # "attachmentUpdatedAt":Ljava/lang/String;
    .end local v12    # "feedbackAttachment":Lnet/hockeyapp/android/objects/FeedbackAttachment;
    .end local v18    # "filename":Ljava/lang/String;
    .end local v21    # "j":I
    .end local v33    # "url":Ljava/lang/String;
    :cond_0
    new-instance v14, Lnet/hockeyapp/android/objects/FeedbackMessage;

    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-direct {v14}, Lnet/hockeyapp/android/objects/FeedbackMessage;-><init>()V

    .line 131
    .restart local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    invoke-virtual {v14, v2}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setAppId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v14, v7}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCleanText(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v14, v8}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCreatedAt(Ljava/lang/String;)V

    .line 134
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setId(I)V

    .line 135
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setModel(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setName(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOem(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOsVersion(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setSubjec(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setText(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setToken(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setUserString(Ljava/lang/String;)V

    .line 143
    move/from16 v0, v35

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setVia(I)V

    .line 144
    invoke-virtual {v14, v13}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setFeedbackAttachments(Ljava/util/List;)V

    .line 145
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 149
    .end local v2    # "appId":Ljava/lang/String;
    .end local v7    # "cleanText":Ljava/lang/String;
    .end local v8    # "createdAt":Ljava/lang/String;
    .end local v13    # "feedbackAttachments":Ljava/util/List;, "Ljava/util/List<Lnet/hockeyapp/android/objects/FeedbackAttachment;>;"
    .end local v19    # "i":I
    .end local v20    # "id":I
    .end local v22    # "jsonAttachments":Lorg/json/JSONArray;
    .end local v26    # "model":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "oem":Ljava/lang/String;
    .end local v29    # "osVersion":Ljava/lang/String;
    .end local v30    # "subject":Ljava/lang/String;
    .end local v31    # "text":Ljava/lang/String;
    .end local v32    # "token":Ljava/lang/String;
    .end local v34    # "userString":Ljava/lang/String;
    .end local v35    # "via":I
    :cond_1
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setMessages(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :try_start_2
    const-string v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :goto_2
    :try_start_3
    const-string v36, "email"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setEmail(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    :goto_3
    :try_start_4
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setId(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 170
    :goto_4
    :try_start_5
    const-string v36, "created_at"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setCreatedAt(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 175
    :goto_5
    :try_start_6
    new-instance v17, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct/range {v17 .. v17}, Lnet/hockeyapp/android/objects/FeedbackResponse;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 176
    .end local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .local v17, "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :try_start_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 178
    :try_start_8
    const-string v36, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setStatus(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    .line 185
    :goto_6
    :try_start_9
    const-string v36, "token"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setToken(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_7
    move-object v10, v11

    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    move-object/from16 v16, v17

    .line 194
    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v15    # "feedbackObject":Lorg/json/JSONObject;
    .end local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v25    # "messagesArray":Lorg/json/JSONArray;
    .restart local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :cond_2
    :goto_8
    return-object v16

    .line 153
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .restart local v15    # "feedbackObject":Lorg/json/JSONObject;
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    .restart local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .restart local v25    # "messagesArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 154
    .local v9, "e":Lorg/json/JSONException;
    :try_start_a
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 189
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v25    # "messagesArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v9

    move-object v10, v11

    .line 190
    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v15    # "feedbackObject":Lorg/json/JSONObject;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "e":Lorg/json/JSONException;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    :goto_9
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    .line 159
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .restart local v15    # "feedbackObject":Lorg/json/JSONObject;
    .restart local v23    # "jsonObject":Lorg/json/JSONObject;
    .restart local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .restart local v25    # "messagesArray":Lorg/json/JSONArray;
    :catch_2
    move-exception v9

    .line 160
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_b
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 165
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v9

    .line 166
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 171
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v9

    .line 172
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 179
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_5
    move-exception v9

    .line 180
    .restart local v9    # "e":Lorg/json/JSONException;
    :try_start_c
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 189
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v9

    move-object v10, v11

    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    move-object/from16 v16, v17

    .end local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    goto :goto_9

    .line 186
    .end local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .restart local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_7
    move-exception v9

    .line 187
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_7

    .line 189
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v11    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .end local v14    # "feedbackMessage":Lnet/hockeyapp/android/objects/FeedbackMessage;
    .end local v15    # "feedbackObject":Lorg/json/JSONObject;
    .end local v17    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    .end local v23    # "jsonObject":Lorg/json/JSONObject;
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hockeyapp/android/objects/FeedbackMessage;>;"
    .end local v25    # "messagesArray":Lorg/json/JSONArray;
    .restart local v10    # "feedback":Lnet/hockeyapp/android/objects/Feedback;
    .restart local v16    # "feedbackResponse":Lnet/hockeyapp/android/objects/FeedbackResponse;
    :catch_8
    move-exception v9

    goto :goto_9
.end method
