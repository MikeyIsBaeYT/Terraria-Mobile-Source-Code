.class public Lcom/codeglue/terraria/Unpacker;
.super Ljava/lang/Object;
.source "Unpacker.java"


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field currentVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/codeglue/terraria/Unpacker;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/codeglue/terraria/Unpacker;->activity:Landroid/app/Activity;

    .line 29
    iget-object v1, p0, Lcom/codeglue/terraria/Unpacker;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "versionCode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/codeglue/terraria/Unpacker;->currentVersion:I

    .line 31
    return-void
.end method

.method private extractZip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "pathOfZip"    # Ljava/lang/String;
    .param p2, "pathToExtract"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v14, "Octarine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ExpansionDownloader: extracting to: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v1, 0x400

    .line 113
    .local v1, "BUFFER_SIZE":I
    new-array v3, v1, [B

    .line 118
    .local v3, "buffer":[B
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_0

    .line 121
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 122
    const-string v14, "Octarine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ExpansionDownloader: Creating directory:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const-string v14, "Octarine"

    const-string v15, "ExpansionDownloader: Opening zip file.."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v13, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v13, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v13, "zin":Ljava/util/zip/ZipInputStream;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 131
    .local v10, "succes":Ljava/lang/Boolean;
    const/4 v12, 0x0

    .line 132
    .local v12, "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 134
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "path":Ljava/lang/String;
    const-string v14, "\\"

    const-string v15, "/"

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 136
    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "array":[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v2

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    const-string v14, "Octarine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ExpansionDownloader: Extracting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 143
    const-string v14, "Octarine"

    const-string v15, "ExpansionDownloader: ze.isDirectory() == true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v11, "unzipFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_1

    .line 148
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 149
    const-string v14, "Octarine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ExpansionDownloader: Creating directory:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 184
    .end local v2    # "array":[Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "unzipFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v14, "Exception"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unzip exception2 :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :try_start_3
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    .line 193
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    .line 200
    .end local v5    # "f":Ljava/io/File;
    .end local v10    # "succes":Ljava/lang/Boolean;
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_2
    return v14

    .line 154
    .restart local v2    # "array":[Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "succes":Ljava/lang/Boolean;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v14, 0x0

    invoke-direct {v7, v8, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 157
    .local v7, "out":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .local v6, "fout":Ljava/io/BufferedOutputStream;
    :goto_3
    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v13, v3, v14, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v9

    .local v9, "size":I
    const/4 v14, -0x1

    if-eq v9, v14, :cond_3

    .line 163
    const/4 v14, 0x0

    invoke-virtual {v6, v3, v14, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 168
    .end local v9    # "size":I
    :catch_1
    move-exception v4

    .line 170
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v14, "Exception"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unzip exception 1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 174
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 190
    .end local v2    # "array":[Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "fout":Ljava/io/BufferedOutputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v14

    :try_start_8
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V

    throw v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 195
    .end local v5    # "f":Ljava/io/File;
    .end local v10    # "succes":Ljava/lang/Boolean;
    .end local v12    # "ze":Ljava/util/zip/ZipEntry;
    .end local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v4

    .line 197
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v14, "Exception"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unzip exception :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v14, 0x0

    goto :goto_2

    .line 166
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "array":[Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "fout":Ljava/io/BufferedOutputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "size":I
    .restart local v10    # "succes":Ljava/lang/Boolean;
    .restart local v12    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_3
    :try_start_9
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 174
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_0

    .line 174
    .end local v9    # "size":I
    :catchall_1
    move-exception v14

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    throw v14

    .line 180
    .end local v2    # "array":[Ljava/lang/String;
    .end local v6    # "fout":Ljava/io/BufferedOutputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "path":Ljava/lang/String;
    :cond_4
    const-string v14, "Octarine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Succes = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v10

    .line 190
    :try_start_b
    invoke-virtual {v13}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1
.end method


# virtual methods
.method public extract()Ljava/lang/String;
    .locals 18

    .prologue
    .line 39
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codeglue/terraria/Unpacker;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codeglue/terraria/Unpacker;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/codeglue/terraria/Unpacker;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget v13, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 41
    .local v13, "version":I
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 43
    .local v14, "versionCode":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 44
    .local v10, "root":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/Android/obb/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "expansionPath":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/Android/data/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v5, "extractionPath":Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/main."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".obb"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "filePath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "strExpandPath":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    .line 51
    .local v12, "strExtactPath":Ljava/lang/String;
    const-string v15, "Octarine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ExpansionDownloader: expansionPath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v15, "Octarine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ExpansionDownloader: extractionPath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    move-object/from16 v0, p0

    iget v15, v0, Lcom/codeglue/terraria/Unpacker;->currentVersion:I

    if-gt v13, v15, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 56
    const-string v15, "Octarine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "does not need extraction : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " <= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/codeglue/terraria/Unpacker;->currentVersion:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " extractionPath.exists(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    .line 103
    .end local v3    # "expansionPath":Ljava/io/File;
    .end local v5    # "extractionPath":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "root":Ljava/io/File;
    .end local v11    # "strExpandPath":Ljava/lang/String;
    .end local v12    # "strExtactPath":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v14    # "versionCode":Ljava/lang/String;
    :goto_0
    return-object v15

    .line 60
    .restart local v3    # "expansionPath":Ljava/io/File;
    .restart local v5    # "extractionPath":Ljava/io/File;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "root":Ljava/io/File;
    .restart local v11    # "strExpandPath":Ljava/lang/String;
    .restart local v12    # "strExtactPath":Ljava/lang/String;
    .restart local v13    # "version":I
    .restart local v14    # "versionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 63
    const-string v15, "Octarine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Path to obb: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 68
    const-string v15, "Octarine"

    const-string v16, "OBB file does exist"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/codeglue/terraria/Unpacker;->extractZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 77
    .local v4, "extracted":Z
    if-eqz v4, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codeglue/terraria/Unpacker;->activity:Landroid/app/Activity;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 81
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 82
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v15, "versionCode"

    invoke-interface {v2, v15, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    const-string v15, "Octarine"

    const-string v16, "Succeded"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 72
    .end local v4    # "extracted":Z
    :cond_1
    const-string v15, "Octarine"

    const-string v16, "OBB file does NOT exist"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    .end local v3    # "expansionPath":Ljava/io/File;
    .end local v5    # "extractionPath":Ljava/io/File;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "root":Ljava/io/File;
    .end local v11    # "strExpandPath":Ljava/lang/String;
    .end local v12    # "strExtactPath":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v14    # "versionCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 103
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codeglue/terraria/Unpacker;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 87
    .restart local v3    # "expansionPath":Ljava/io/File;
    .restart local v4    # "extracted":Z
    .restart local v5    # "extractionPath":Ljava/io/File;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v10    # "root":Ljava/io/File;
    .restart local v11    # "strExpandPath":Ljava/lang/String;
    .restart local v12    # "strExtactPath":Ljava/lang/String;
    .restart local v13    # "version":I
    .restart local v14    # "versionCode":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v15, "Octarine"

    const-string v16, "Failed"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    .end local v4    # "extracted":Z
    .end local v6    # "f":Ljava/io/File;
    :cond_3
    const-string v15, "Octarine"

    const-string v16, "ExpansionDownloader: expansionPath does not exist"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
