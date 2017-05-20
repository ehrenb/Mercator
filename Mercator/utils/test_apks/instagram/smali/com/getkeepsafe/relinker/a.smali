.class public Lcom/getkeepsafe/relinker/a;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"

# interfaces
.implements Lcom/getkeepsafe/relinker/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    .line 150
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 152
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 153
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 159
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 160
    return-wide v0

    .line 156
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 157
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 158
    goto :goto_0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/relinker/c;)V
    .locals 13

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    .line 52
    const/4 v2, 0x0

    .line 53
    :goto_0
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x5

    if-ge v2, v5, :cond_b

    .line 55
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/io/File;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 60
    :goto_1
    if-nez v5, :cond_1

    .line 61
    :try_start_2
    const-string v2, "FATAL! Couldn\'t find application APK!"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/getkeepsafe/relinker/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    if-eqz v5, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 138
    :cond_0
    :goto_2
    return-void

    .line 57
    :catch_0
    move-exception v2

    move v2, v4

    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x0

    .line 66
    :goto_3
    add-int/lit8 v6, v2, 0x1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_9

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v3, 0x0

    .line 70
    :try_start_4
    array-length v7, p2

    const/4 v2, 0x0

    move v12, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v12

    :goto_4
    if-ge v4, v7, :cond_a

    aget-object v2, p2, v4

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_4

    move-object v4, v2

    move-object v2, v3

    .line 80
    :goto_5
    if-eqz v2, :cond_2

    const-string v3, "Looking for %s in APK..."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v7}, Lcom/getkeepsafe/relinker/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_2
    if-nez v4, :cond_6

    .line 84
    if-eqz v2, :cond_5

    .line 85
    new-instance v3, Lcom/getkeepsafe/relinker/MissingLibraryException;

    invoke-direct {v3, v2}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    :catchall_0
    move-exception v2

    move-object v3, v5

    .line 133
    :goto_6
    if-eqz v3, :cond_3

    .line 134
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 136
    :cond_3
    :goto_7
    throw v2

    .line 70
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 87
    :cond_5
    :try_start_6
    new-instance v2, Lcom/getkeepsafe/relinker/MissingLibraryException;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/getkeepsafe/relinker/MissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_6
    const-string v3, "Found %s! Extracting..."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v7}, Lcom/getkeepsafe/relinker/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-nez v2, :cond_7

    move v2, v6

    .line 94
    goto/16 :goto_3

    .line 96
    :catch_1
    move-exception v2

    move v2, v6

    .line 98
    goto/16 :goto_3

    .line 101
    :cond_7
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x0

    .line 104
    :try_start_8
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v4

    .line 105
    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 106
    :try_start_a
    invoke-direct {p0, v4, v2}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v8

    .line 107
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 108
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-wide v10

    cmp-long v3, v8, v10

    if-eqz v3, :cond_8

    .line 119
    :try_start_b
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {p0, v2}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    move v2, v6

    goto/16 :goto_3

    .line 119
    :cond_8
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {p0, v2}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    .line 124
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 125
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 126
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 133
    if-eqz v5, :cond_0

    .line 134
    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_2

    .line 136
    :catch_2
    move-exception v2

    goto/16 :goto_2

    .line 112
    :catch_3
    move-exception v4

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    .line 119
    :goto_8
    :try_start_d
    invoke-direct {p0, v3}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {p0, v2}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    move v2, v6

    goto/16 :goto_3

    .line 115
    :catch_4
    move-exception v4

    move-object v4, v2

    move-object v2, v3

    .line 119
    :goto_9
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {p0, v2}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    move v2, v6

    goto/16 :goto_3

    .line 119
    :catchall_1
    move-exception v4

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    :goto_a
    invoke-direct {p0, v4}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-direct {p0, v3}, Lcom/getkeepsafe/relinker/a;->a(Ljava/io/Closeable;)V

    throw v2

    .line 130
    :cond_9
    const-string v2, "FATAL! Couldn\'t extract the library from the APK!"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/getkeepsafe/relinker/c;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 133
    if-eqz v5, :cond_0

    .line 134
    :try_start_e
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 136
    :catch_5
    move-exception v2

    goto/16 :goto_2

    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v3

    goto/16 :goto_7

    .line 132
    :catchall_2
    move-exception v2

    goto/16 :goto_6

    .line 119
    :catchall_3
    move-exception v2

    goto :goto_a

    :catchall_4
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_a

    .line 115
    :catch_8
    move-exception v2

    move-object v2, v3

    goto :goto_9

    :catch_9
    move-exception v3

    goto :goto_9

    .line 112
    :catch_a
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_8

    :catch_b
    move-exception v3

    move-object v3, v4

    goto :goto_8

    :cond_a
    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_5

    :cond_b
    move-object v5, v3

    goto/16 :goto_1
.end method
