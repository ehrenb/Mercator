.class public Lcm/aptoide/pt/v8engine/util/DownloadFactory;
.super Ljava/lang/Object;
.source "DownloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;
    }
.end annotation


# static fields
.field private static final DOWNGRADE_ACTION:Ljava/lang/String; = "?action=downgrade"

.field private static final INSTALL_ACTION:Ljava/lang/String; = "?action=install"

.field private static final UPDATE_ACTION:Ljava/lang/String; = "?action=update"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;ILjava/lang/String;)Lio/realm/aa;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/model/v7/Obb;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v0, 0x0

    .line 107
    const/4 v13, 0x0

    .line 109
    if-eqz p5, :cond_2

    .line 110
    invoke-virtual/range {p5 .. p5}, Lcm/aptoide/pt/model/v7/Obb;->getMain()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcm/aptoide/pt/model/v7/Obb;->getPatch()Lcm/aptoide/pt/model/v7/Obb$ObbItem;

    move-result-object v3

    .line 118
    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getMd5sum()Ljava/lang/String;

    move-result-object v9

    .line 121
    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/Obb$ObbItem;->getFilename()Ljava/lang/String;

    move-result-object v13

    move-object v12, v0

    move-object v7, v1

    move-object v6, v2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move/from16 v10, p7

    move-object/from16 v11, p8

    .line 125
    invoke-direct/range {v0 .. v13}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/aa;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v12, v0

    move-object v7, v1

    move-object v6, v2

    goto :goto_0

    :cond_2
    move-object v12, v0

    move-object v7, v1

    move-object v6, v2

    goto :goto_0
.end method

.method private createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/aa;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v8, Lio/realm/aa;

    invoke-direct {v8}, Lio/realm/aa;-><init>()V

    .line 136
    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    move-object v5, p2

    move/from16 v6, p10

    move-object/from16 v7, p11

    invoke-static/range {v0 .. v7}, Lcm/aptoide/pt/database/realm/FileToDownload;->createFileToDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    .line 139
    if-eqz p6, :cond_0

    .line 140
    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v0, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p12

    move-object v5, p2

    move/from16 v6, p10

    move-object/from16 v7, p11

    invoke-static/range {v0 .. v7}, Lcm/aptoide/pt/database/realm/FileToDownload;->createFileToDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    .line 144
    :cond_0
    if-eqz p8, :cond_1

    .line 145
    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p13

    move-object v5, p2

    move/from16 v6, p10

    move-object/from16 v7, p11

    .line 146
    invoke-static/range {v0 .. v7}, Lcm/aptoide/pt/database/realm/FileToDownload;->createFileToDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v0

    .line 145
    invoke-virtual {v8, v0}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    .line 150
    :cond_1
    return-object v8
.end method

.method private validateApp(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid App MD5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No download link provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This app has an OBB and doesn\'t have the package name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This app has an OBB and doesn\'t have the App name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    return-void
.end method


# virtual methods
.method public create(Lcm/aptoide/pt/database/realm/Rollback;)Lcm/aptoide/pt/database/realm/Download;
    .locals 15

    .prologue
    .line 222
    new-instance v14, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v14}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAppId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 224
    invoke-static {}, Lcm/aptoide/pt/utils/IdUtils;->randomString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 228
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getVersionCode()I

    move-result v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionName(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getApkPath()Ljava/lang/String;

    move-result-object v3

    .line 236
    sget-object v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$1;->$SwitchMap$cm$aptoide$pt$database$realm$Rollback$Action:[I

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/database/realm/Rollback$Action;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback$Action;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/database/realm/Rollback$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getMainObbPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getMainObbMd5()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getPatchObbPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getPatchObbMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getVersionCode()I

    move-result v10

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getMainObbName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getPatchObbName()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    .line 255
    invoke-direct/range {v0 .. v13}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/aa;

    move-result-object v0

    .line 254
    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 259
    return-object v14

    .line 226
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Rollback;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 243
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=downgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=downgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 248
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public create(Lcm/aptoide/pt/database/realm/Scheduled;)Lcm/aptoide/pt/database/realm/Download;
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 277
    new-instance v9, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v9}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 278
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getVerCode()I

    move-result v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 281
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionName(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v1

    .line 286
    sget-object v2, Lcm/aptoide/pt/v8engine/util/DownloadFactory$1;->$SwitchMap$cm$aptoide$pt$database$AppAction:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getAppActionAsEnum()Lcm/aptoide/pt/database/AppAction;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/database/AppAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 300
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?action=install"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    :goto_0
    invoke-virtual {v9, v4}, Lcm/aptoide/pt/database/realm/Download;->setScheduled(Z)V

    .line 306
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getMd5()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v5

    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getVerCode()I

    move-result v7

    .line 308
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Scheduled;->getVersionName()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 306
    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;ILjava/lang/String;)Lio/realm/aa;

    move-result-object v0

    .line 305
    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 309
    return-object v9

    .line 288
    :pswitch_0
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?action=downgrade"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=downgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {v9, v4}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?action=update"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public create(Lcm/aptoide/pt/database/realm/Update;)Lcm/aptoide/pt/database/realm/Download;
    .locals 15

    .prologue
    .line 203
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMd5()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 203
    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->validateApp(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v14, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v14}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getUpdateVersionCode()I

    move-result v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionName(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?action=update"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?action=update"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMainObbPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMainObbMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getPatchObbPath()Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getPatchObbMd5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getVersionCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v11

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getMainObbName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/database/realm/Update;->getPatchObbName()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    .line 213
    invoke-direct/range {v0 .. v13}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/aa;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 218
    return-object v14
.end method

.method public create(Lcm/aptoide/pt/model/v7/GetAppMeta$App;I)Lcm/aptoide/pt/database/realm/Download;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 36
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPathAlt()Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v0, p0

    .line 38
    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->validateApp(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getPathAlt()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p2, v0, v1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->getDownloadPaths(ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;

    move-result-object v0

    .line 47
    new-instance v9, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v9}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v9, p2}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 52
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 54
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setVersionName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->path:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v5

    iget-object v6, v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->altPath:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVercode()I

    move-result v7

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getVername()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;ILjava/lang/String;)Lio/realm/aa;

    move-result-object v0

    .line 56
    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 61
    return-object v9

    :cond_1
    move-object v5, v6

    .line 39
    goto/16 :goto_0
.end method

.method public create(Lcm/aptoide/pt/model/v7/listapp/App;I)Lcm/aptoide/pt/database/realm/Download;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getPath()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getPathAlt()Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v0, p0

    .line 178
    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->validateApp(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/File;->getPathAlt()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p0, p2, v0, v1}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->getDownloadPaths(ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;

    move-result-object v0

    .line 186
    new-instance v9, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v9}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9, p2}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 190
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/File;->getVercode()I

    move-result v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 193
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/File;->getVername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcm/aptoide/pt/database/realm/Download;->setVersionName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->path:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/listapp/File;->getMd5sum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getObb()Lcm/aptoide/pt/model/v7/Obb;

    move-result-object v5

    iget-object v6, v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->altPath:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getVercode()I

    move-result v7

    .line 198
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/listapp/App;->getFile()Lcm/aptoide/pt/model/v7/listapp/File;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/File;->getVername()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 195
    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;ILjava/lang/String;)Lio/realm/aa;

    move-result-object v0

    .line 194
    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 199
    return-object v9

    :cond_1
    move-object v5, v6

    .line 180
    goto/16 :goto_0
.end method

.method public create(Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;)Lcm/aptoide/pt/database/realm/Download;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 263
    new-instance v9, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v9}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 264
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getMarketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 265
    iget-object v0, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 266
    iget v0, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->vercode:I

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 268
    iget-object v0, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 270
    iget-object v1, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->md5:Ljava/lang/String;

    iget-object v3, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->path:Ljava/lang/String;

    iget-object v4, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->md5:Ljava/lang/String;

    iget v7, p1, Lcm/aptoide/pt/v8engine/AutoUpdate$AutoUpdateInfo;->vercode:I

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    .line 271
    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;ILjava/lang/String;)Lio/realm/aa;

    move-result-object v0

    .line 270
    invoke-virtual {v9, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 273
    return-object v9
.end method

.method public create(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;)Lcm/aptoide/pt/database/realm/Download;
    .locals 15

    .prologue
    .line 154
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMd5()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getApkPath()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    .line 154
    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->validateApp(Ljava/lang/String;Lcm/aptoide/pt/model/v7/Obb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v14, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v14}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setMd5(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setIcon(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAppName(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setAction(I)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setPackageName(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getVersionCode()I

    move-result v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionCode(I)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setVersionName(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?action=update"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getAlternativeApkPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?action=update"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMd5()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMainObbPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMainObbMd5()Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPatchObbPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPatchObbMd5()Ljava/lang/String;

    move-result-object v9

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getVersionCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v11

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getMainObbName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;->getPatchObbName()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    .line 166
    invoke-direct/range {v0 .. v13}, Lcm/aptoide/pt/v8engine/util/DownloadFactory;->createFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/realm/aa;

    move-result-object v0

    .line 165
    invoke-virtual {v14, v0}, Lcm/aptoide/pt/database/realm/Download;->setFilesToDownload(Lio/realm/aa;)V

    .line 173
    return-object v14
.end method

.method getDownloadPaths(ILjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;
    .locals 2

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    new-instance v0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;

    invoke-direct {v0, p0, p2, p3}, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;-><init>(Lcm/aptoide/pt/v8engine/util/DownloadFactory;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=downgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=downgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 91
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?action=update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
