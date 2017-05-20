.class public Lio/realm/at;
.super Lcm/aptoide/pt/database/realm/Update;
.source "UpdateRealmProxy.java"

# interfaces
.implements Lio/realm/au;
.implements Lio/realm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/at$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/realm/at$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "versionCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "md5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "apkPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "fileSize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "updateVersionName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v1, "updateVersionCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "excluded"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v1, "trustedBadge"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v1, "alternativeApkPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "mainObbName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v1, "mainObbPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v1, "mainObbMd5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "patchObbName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v1, "patchObbPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v1, "patchObbMd5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/at;->c:Ljava/util/List;

    .line 145
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/Update;-><init>()V

    .line 148
    check-cast p1, Lio/realm/at$a;

    iput-object p1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    .line 149
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    .line 150
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Update;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1248
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1353
    :goto_0
    return-wide v4

    .line 1251
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1252
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 1253
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/at$a;

    .line 1254
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 1255
    check-cast v4, Lio/realm/au;

    invoke-interface {v4}, Lio/realm/au;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 1257
    if-nez v6, :cond_2

    .line 1258
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    .line 1262
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 1263
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 1264
    if-eqz v6, :cond_1

    .line 1265
    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1268
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-wide v2, v8, Lio/realm/at$a;->b:J

    move-object v6, p1

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$appId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1270
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$label()Ljava/lang/String;

    move-result-object v6

    .line 1271
    if-eqz v6, :cond_3

    .line 1272
    iget-wide v2, v8, Lio/realm/at$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 1276
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$icon()Ljava/lang/String;

    move-result-object v6

    .line 1277
    if-eqz v6, :cond_4

    .line 1278
    iget-wide v2, v8, Lio/realm/at$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1282
    :goto_3
    iget-wide v2, v8, Lio/realm/at$a;->e:J

    move-object v6, p1

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$versionCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1283
    iget-wide v2, v8, Lio/realm/at$a;->f:J

    move-object v6, p1

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$timestamp()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1284
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$md5()Ljava/lang/String;

    move-result-object v6

    .line 1285
    if-eqz v6, :cond_5

    .line 1286
    iget-wide v2, v8, Lio/realm/at$a;->g:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, p1

    .line 1290
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v6

    .line 1291
    if-eqz v6, :cond_6

    .line 1292
    iget-wide v2, v8, Lio/realm/at$a;->h:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1296
    :goto_5
    iget-wide v2, v8, Lio/realm/at$a;->i:J

    move-object v6, p1

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$fileSize()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetDouble(JJJD)V

    move-object v2, p1

    .line 1297
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v6

    .line 1298
    if-eqz v6, :cond_7

    .line 1299
    iget-wide v2, v8, Lio/realm/at$a;->j:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1303
    :goto_6
    iget-wide v2, v8, Lio/realm/at$a;->k:J

    move-object v6, p1

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$updateVersionCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1304
    iget-wide v2, v8, Lio/realm/at$a;->l:J

    move-object v6, p1

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$excluded()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    move-object v2, p1

    .line 1305
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v6

    .line 1306
    if-eqz v6, :cond_8

    .line 1307
    iget-wide v2, v8, Lio/realm/at$a;->m:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_7
    move-object v2, p1

    .line 1311
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v6

    .line 1312
    if-eqz v6, :cond_9

    .line 1313
    iget-wide v2, v8, Lio/realm/at$a;->n:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_8
    move-object v2, p1

    .line 1317
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v6

    .line 1318
    if-eqz v6, :cond_a

    .line 1319
    iget-wide v2, v8, Lio/realm/at$a;->o:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v2, p1

    .line 1323
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v6

    .line 1324
    if-eqz v6, :cond_b

    .line 1325
    iget-wide v2, v8, Lio/realm/at$a;->p:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_a
    move-object v2, p1

    .line 1329
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v6

    .line 1330
    if-eqz v6, :cond_c

    .line 1331
    iget-wide v2, v8, Lio/realm/at$a;->q:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_b
    move-object v2, p1

    .line 1335
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v6

    .line 1336
    if-eqz v6, :cond_d

    .line 1337
    iget-wide v2, v8, Lio/realm/at$a;->r:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_c
    move-object v2, p1

    .line 1341
    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v6

    .line 1342
    if-eqz v6, :cond_e

    .line 1343
    iget-wide v2, v8, Lio/realm/at$a;->s:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1347
    :goto_d
    check-cast p1, Lio/realm/au;

    invoke-interface {p1}, Lio/realm/au;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v6

    .line 1348
    if-eqz v6, :cond_f

    .line 1349
    iget-wide v2, v8, Lio/realm/at$a;->t:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1260
    :cond_2
    invoke-static {v0, v1, v2, v3, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_1

    .line 1274
    :cond_3
    iget-wide v2, v8, Lio/realm/at$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 1280
    :cond_4
    iget-wide v2, v8, Lio/realm/at$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1288
    :cond_5
    iget-wide v2, v8, Lio/realm/at$a;->g:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 1294
    :cond_6
    iget-wide v2, v8, Lio/realm/at$a;->h:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_5

    .line 1301
    :cond_7
    iget-wide v2, v8, Lio/realm/at$a;->j:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_6

    .line 1309
    :cond_8
    iget-wide v2, v8, Lio/realm/at$a;->m:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_7

    .line 1315
    :cond_9
    iget-wide v2, v8, Lio/realm/at$a;->n:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_8

    .line 1321
    :cond_a
    iget-wide v2, v8, Lio/realm/at$a;->o:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_9

    .line 1327
    :cond_b
    iget-wide v2, v8, Lio/realm/at$a;->p:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_a

    .line 1333
    :cond_c
    iget-wide v2, v8, Lio/realm/at$a;->q:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_b

    .line 1339
    :cond_d
    iget-wide v2, v8, Lio/realm/at$a;->r:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_c

    .line 1345
    :cond_e
    iget-wide v2, v8, Lio/realm/at$a;->s:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_d

    .line 1351
    :cond_f
    iget-wide v2, v8, Lio/realm/at$a;->t:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0
.end method

.method public static a(Lcm/aptoide/pt/database/realm/Update;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Update;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Update;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/Update;"
        }
    .end annotation

    .prologue
    .line 1472
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 1473
    :cond_0
    const/4 v0, 0x0

    .line 1509
    :goto_0
    return-object v0

    .line 1475
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 1477
    if-eqz v0, :cond_3

    .line 1479
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 1480
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    goto :goto_0

    .line 1482
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/Update;

    .line 1483
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 1489
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1490
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$appId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/au;->realmSet$appId(J)V

    move-object v0, v1

    .line 1491
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$label()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$label(Ljava/lang/String;)V

    move-object v0, v1

    .line 1492
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, v1

    .line 1493
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$versionCode(I)V

    move-object v0, v1

    .line 1494
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/au;->realmSet$timestamp(J)V

    move-object v0, v1

    .line 1495
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1496
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$apkPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1497
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$fileSize()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/au;->realmSet$fileSize(D)V

    move-object v0, v1

    .line 1498
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$updateVersionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1499
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$updateVersionCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$updateVersionCode(I)V

    move-object v0, v1

    .line 1500
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$excluded()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$excluded(Z)V

    move-object v0, v1

    .line 1501
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$trustedBadge(Ljava/lang/String;)V

    move-object v0, v1

    .line 1502
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1503
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1504
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1505
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1506
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1507
    check-cast v0, Lio/realm/au;

    move-object v2, p0

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1508
    check-cast v0, Lio/realm/au;

    check-cast p0, Lio/realm/au;

    invoke-interface {p0}, Lio/realm/au;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/au;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1509
    goto/16 :goto_0

    .line 1486
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/Update;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/Update;-><init>()V

    .line 1487
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;Lcm/aptoide/pt/database/realm/Update;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Update;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Update;",
            "Lcm/aptoide/pt/database/realm/Update;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Update;"
        }
    .end annotation

    .prologue
    .line 1513
    move-object v0, p1

    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$appId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/au;->realmSet$appId(J)V

    move-object v0, p1

    .line 1514
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$label()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$label(Ljava/lang/String;)V

    move-object v0, p1

    .line 1515
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$icon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, p1

    .line 1516
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$versionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$versionCode(I)V

    move-object v0, p1

    .line 1517
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/au;->realmSet$timestamp(J)V

    move-object v0, p1

    .line 1518
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$md5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1519
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$apkPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1520
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$fileSize()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/au;->realmSet$fileSize(D)V

    move-object v0, p1

    .line 1521
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$updateVersionName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1522
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$updateVersionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$updateVersionCode(I)V

    move-object v0, p1

    .line 1523
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$excluded()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$excluded(Z)V

    move-object v0, p1

    .line 1524
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$trustedBadge(Ljava/lang/String;)V

    move-object v0, p1

    .line 1525
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1526
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1527
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1528
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1529
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1530
    check-cast v0, Lio/realm/au;

    move-object v1, p2

    check-cast v1, Lio/realm/au;

    invoke-interface {v1}, Lio/realm/au;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1531
    check-cast v0, Lio/realm/au;

    check-cast p2, Lio/realm/au;

    invoke-interface {p2}, Lio/realm/au;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/au;->realmSet$patchObbMd5(Ljava/lang/String;)V

    .line 1532
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Update;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Update;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Update;"
        }
    .end annotation

    .prologue
    .line 1000
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/a;->c:J

    iget-wide v2, p0, Lio/realm/u;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    instance-of v0, p1, Lio/realm/internal/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    :goto_0
    return-object p1

    .line 1006
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 1007
    if-eqz v0, :cond_2

    .line 1008
    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    move-object p1, v0

    goto :goto_0

    .line 1010
    :cond_2
    const/4 v1, 0x0

    .line 1012
    if-eqz p2, :cond_6

    .line 1013
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v4

    .line 1014
    invoke-virtual {v4}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v0, p1

    .line 1015
    check-cast v0, Lio/realm/au;

    invoke-interface {v0}, Lio/realm/au;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    .line 1017
    if-nez v0, :cond_3

    .line 1018
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v2

    .line 1022
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 1023
    new-instance v1, Lio/realm/at;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v5, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0, v5}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/at;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 1024
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 1025
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 1026
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 1032
    :goto_2
    if-eqz v0, :cond_5

    .line 1033
    invoke-static {p0, v1, p1, p3}, Lio/realm/at;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;Lcm/aptoide/pt/database/realm/Update;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Update;

    move-result-object p1

    goto :goto_0

    .line 1020
    :cond_3
    invoke-virtual {v4, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 1028
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1035
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/at;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Update;

    move-result-object p1

    goto :goto_0

    :cond_6
    move v0, p2

    goto :goto_2
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 429
    const-string v0, "class_Update"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    const-string v0, "class_Update"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 431
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 432
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "appId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 433
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "label"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 434
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 435
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 436
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 437
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 438
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "apkPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 439
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    const-string v2, "fileSize"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 440
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "updateVersionName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 441
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "updateVersionCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 442
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "excluded"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 443
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "trustedBadge"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 444
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "alternativeApkPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 445
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 446
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 447
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbMd5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 448
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 449
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 450
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbMd5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 451
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 452
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 455
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_Update"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    const-string v0, "class_Update"

    return-object v0
.end method

.method public static a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Ljava/util/Iterator",
            "<+",
            "Lio/realm/ac;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1357
    const-class v2, Lcm/aptoide/pt/database/realm/Update;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 1358
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/at$a;

    .line 1360
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 1362
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1363
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/Update;

    .line 1364
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1365
    instance-of v6, v15, Lio/realm/internal/j;

    if-eqz v6, :cond_1

    move-object v6, v15

    check-cast v6, Lio/realm/internal/j;

    invoke-interface {v6}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v15

    check-cast v6, Lio/realm/internal/j;

    invoke-interface {v6}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v15

    .line 1366
    check-cast v6, Lio/realm/internal/j;

    invoke-interface {v6}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v6

    invoke-interface {v6}, Lio/realm/internal/l;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v6, v15

    .line 1369
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$packageName()Ljava/lang/String;

    move-result-object v8

    .line 1371
    if-nez v8, :cond_3

    .line 1372
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    .line 1376
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 1377
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 1378
    if-eqz v8, :cond_2

    .line 1379
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :cond_2
    move-wide v10, v6

    .line 1382
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    iget-wide v8, v14, Lio/realm/at$a;->b:J

    move-object v6, v15

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$appId()J

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1384
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$label()Ljava/lang/String;

    move-result-object v12

    .line 1385
    if-eqz v12, :cond_4

    .line 1386
    iget-wide v8, v14, Lio/realm/at$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v6, v15

    .line 1390
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$icon()Ljava/lang/String;

    move-result-object v12

    .line 1391
    if-eqz v12, :cond_5

    .line 1392
    iget-wide v8, v14, Lio/realm/at$a;->d:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1396
    :goto_3
    iget-wide v8, v14, Lio/realm/at$a;->e:J

    move-object v6, v15

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$versionCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1397
    iget-wide v8, v14, Lio/realm/at$a;->f:J

    move-object v6, v15

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$timestamp()J

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1398
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$md5()Ljava/lang/String;

    move-result-object v12

    .line 1399
    if-eqz v12, :cond_6

    .line 1400
    iget-wide v8, v14, Lio/realm/at$a;->g:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v6, v15

    .line 1404
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v12

    .line 1405
    if-eqz v12, :cond_7

    .line 1406
    iget-wide v8, v14, Lio/realm/at$a;->h:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1410
    :goto_5
    iget-wide v8, v14, Lio/realm/at$a;->i:J

    move-object v6, v15

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$fileSize()D

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetDouble(JJJD)V

    move-object v6, v15

    .line 1411
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v12

    .line 1412
    if-eqz v12, :cond_8

    .line 1413
    iget-wide v8, v14, Lio/realm/at$a;->j:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1417
    :goto_6
    iget-wide v8, v14, Lio/realm/at$a;->k:J

    move-object v6, v15

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$updateVersionCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1418
    iget-wide v8, v14, Lio/realm/at$a;->l:J

    move-object v6, v15

    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$excluded()Z

    move-result v12

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    move-object v6, v15

    .line 1419
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v12

    .line 1420
    if-eqz v12, :cond_9

    .line 1421
    iget-wide v8, v14, Lio/realm/at$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_7
    move-object v6, v15

    .line 1425
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v12

    .line 1426
    if-eqz v12, :cond_a

    .line 1427
    iget-wide v8, v14, Lio/realm/at$a;->n:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_8
    move-object v6, v15

    .line 1431
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v12

    .line 1432
    if-eqz v12, :cond_b

    .line 1433
    iget-wide v8, v14, Lio/realm/at$a;->o:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v6, v15

    .line 1437
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v12

    .line 1438
    if-eqz v12, :cond_c

    .line 1439
    iget-wide v8, v14, Lio/realm/at$a;->p:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_a
    move-object v6, v15

    .line 1443
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v12

    .line 1444
    if-eqz v12, :cond_d

    .line 1445
    iget-wide v8, v14, Lio/realm/at$a;->q:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_b
    move-object v6, v15

    .line 1449
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v12

    .line 1450
    if-eqz v12, :cond_e

    .line 1451
    iget-wide v8, v14, Lio/realm/at$a;->r:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_c
    move-object v6, v15

    .line 1455
    check-cast v6, Lio/realm/au;

    invoke-interface {v6}, Lio/realm/au;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v12

    .line 1456
    if-eqz v12, :cond_f

    .line 1457
    iget-wide v8, v14, Lio/realm/at$a;->s:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1461
    :goto_d
    check-cast v15, Lio/realm/au;

    invoke-interface {v15}, Lio/realm/au;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v12

    .line 1462
    if-eqz v12, :cond_10

    .line 1463
    iget-wide v8, v14, Lio/realm/at$a;->t:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1374
    :cond_3
    invoke-static {v2, v3, v4, v5, v8}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 1388
    :cond_4
    iget-wide v8, v14, Lio/realm/at$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 1394
    :cond_5
    iget-wide v8, v14, Lio/realm/at$a;->d:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1402
    :cond_6
    iget-wide v8, v14, Lio/realm/at$a;->g:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 1408
    :cond_7
    iget-wide v8, v14, Lio/realm/at$a;->h:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_5

    .line 1415
    :cond_8
    iget-wide v8, v14, Lio/realm/at$a;->j:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_6

    .line 1423
    :cond_9
    iget-wide v8, v14, Lio/realm/at$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_7

    .line 1429
    :cond_a
    iget-wide v8, v14, Lio/realm/at$a;->n:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_8

    .line 1435
    :cond_b
    iget-wide v8, v14, Lio/realm/at$a;->o:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_9

    .line 1441
    :cond_c
    iget-wide v8, v14, Lio/realm/at$a;->p:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_a

    .line 1447
    :cond_d
    iget-wide v8, v14, Lio/realm/at$a;->q:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_b

    .line 1453
    :cond_e
    iget-wide v8, v14, Lio/realm/at$a;->r:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_c

    .line 1459
    :cond_f
    iget-wide v8, v14, Lio/realm/at$a;->s:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_d

    .line 1465
    :cond_10
    iget-wide v8, v14, Lio/realm/at$a;->t:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 1469
    :cond_11
    return-void
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Update;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Update;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Update;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Update;"
        }
    .end annotation

    .prologue
    .line 1041
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 1042
    if-eqz v0, :cond_0

    .line 1043
    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    .line 1067
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/Update;

    move-object v0, p1

    check-cast v0, Lio/realm/au;

    invoke-interface {v0}, Lio/realm/au;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Update;

    move-object v1, v0

    .line 1046
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1047
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 1048
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$appId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/au;->realmSet$appId(J)V

    move-object v1, v0

    .line 1049
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$label()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$label(Ljava/lang/String;)V

    move-object v1, v0

    .line 1050
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$icon(Ljava/lang/String;)V

    move-object v1, v0

    .line 1051
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$versionCode(I)V

    move-object v1, v0

    .line 1052
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/au;->realmSet$timestamp(J)V

    move-object v1, v0

    .line 1053
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$md5(Ljava/lang/String;)V

    move-object v1, v0

    .line 1054
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$apkPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 1055
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$fileSize()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/au;->realmSet$fileSize(D)V

    move-object v1, v0

    .line 1056
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$updateVersionName(Ljava/lang/String;)V

    move-object v1, v0

    .line 1057
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$updateVersionCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$updateVersionCode(I)V

    move-object v1, v0

    .line 1058
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$excluded()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$excluded(Z)V

    move-object v1, v0

    .line 1059
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$trustedBadge(Ljava/lang/String;)V

    move-object v1, v0

    .line 1060
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 1061
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v1, v0

    .line 1062
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 1063
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v1, v0

    .line 1064
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v1, v0

    .line 1065
    check-cast v1, Lio/realm/au;

    move-object v2, p1

    check-cast v2, Lio/realm/au;

    invoke-interface {v2}, Lio/realm/au;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 1066
    check-cast v1, Lio/realm/au;

    check-cast p1, Lio/realm/au;

    invoke-interface {p1}, Lio/realm/au;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/au;->realmSet$patchObbMd5(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/at$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x14

    .line 459
    const-string v0, "class_Update"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 460
    const-string v0, "class_Update"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 461
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 20 but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 465
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 466
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 469
    :cond_1
    new-instance v0, Lio/realm/at$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/at$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 471
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_2
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 475
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_3
    iget-wide v4, v0, Lio/realm/at$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 478
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@PrimaryKey field \'packageName\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 481
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'packageName\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_5
    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 484
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'packageName\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_6
    const-string v1, "appId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 487
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'appId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_7
    const-string v1, "appId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_8

    .line 490
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'appId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_8
    iget-wide v4, v0, Lio/realm/at$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 493
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'appId\' does support null values in the existing Realm file. Use corresponding boxed type for field \'appId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_9
    const-string v1, "label"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 496
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'label\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_a
    const-string v1, "label"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 499
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'label\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_b
    iget-wide v4, v0, Lio/realm/at$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 502
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'label\' is required. Either set @Required to field \'label\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_c
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 505
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'icon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_d
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 508
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'icon\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_e
    iget-wide v4, v0, Lio/realm/at$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 511
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'icon\' is required. Either set @Required to field \'icon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_f
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 514
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_10
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 517
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'versionCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_11
    iget-wide v4, v0, Lio/realm/at$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 520
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'versionCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_12
    const-string v1, "timestamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 523
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'timestamp\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_13
    const-string v1, "timestamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 526
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'timestamp\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_14
    iget-wide v4, v0, Lio/realm/at$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 529
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'timestamp\' does support null values in the existing Realm file. Use corresponding boxed type for field \'timestamp\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_15
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 532
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'md5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_16
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 535
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'md5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_17
    iget-wide v4, v0, Lio/realm/at$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_18

    .line 538
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'md5\' is required. Either set @Required to field \'md5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_18
    const-string v1, "apkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 541
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'apkPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_19
    const-string v1, "apkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 544
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'apkPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1a
    iget-wide v4, v0, Lio/realm/at$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 547
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'apkPath\' is required. Either set @Required to field \'apkPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_1b
    const-string v1, "fileSize"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 550
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'fileSize\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_1c
    const-string v1, "fileSize"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 553
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'double\' for field \'fileSize\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1d
    iget-wide v4, v0, Lio/realm/at$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 556
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'fileSize\' does support null values in the existing Realm file. Use corresponding boxed type for field \'fileSize\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1e
    const-string v1, "updateVersionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 559
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'updateVersionName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1f
    const-string v1, "updateVersionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 562
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'updateVersionName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_20
    iget-wide v4, v0, Lio/realm/at$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_21

    .line 565
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'updateVersionName\' is required. Either set @Required to field \'updateVersionName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_21
    const-string v1, "updateVersionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 568
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'updateVersionCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_22
    const-string v1, "updateVersionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 571
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'updateVersionCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_23
    iget-wide v4, v0, Lio/realm/at$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 574
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'updateVersionCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'updateVersionCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_24
    const-string v1, "excluded"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 577
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'excluded\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_25
    const-string v1, "excluded"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_26

    .line 580
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'excluded\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_26
    iget-wide v4, v0, Lio/realm/at$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 583
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'excluded\' does support null values in the existing Realm file. Use corresponding boxed type for field \'excluded\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_27
    const-string v1, "trustedBadge"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 586
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'trustedBadge\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_28
    const-string v1, "trustedBadge"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_29

    .line 589
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'trustedBadge\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_29
    iget-wide v4, v0, Lio/realm/at$a;->m:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 592
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'trustedBadge\' is required. Either set @Required to field \'trustedBadge\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_2a
    const-string v1, "alternativeApkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 595
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'alternativeApkPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_2b
    const-string v1, "alternativeApkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2c

    .line 598
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'alternativeApkPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_2c
    iget-wide v4, v0, Lio/realm/at$a;->n:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 601
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'alternativeApkPath\' is required. Either set @Required to field \'alternativeApkPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_2d
    const-string v1, "mainObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 604
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_2e
    const-string v1, "mainObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2f

    .line 607
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_2f
    iget-wide v4, v0, Lio/realm/at$a;->o:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 610
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbName\' is required. Either set @Required to field \'mainObbName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_30
    const-string v1, "mainObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 613
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_31
    const-string v1, "mainObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_32

    .line 616
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_32
    iget-wide v4, v0, Lio/realm/at$a;->p:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_33

    .line 619
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbPath\' is required. Either set @Required to field \'mainObbPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_33
    const-string v1, "mainObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 622
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbMd5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_34
    const-string v1, "mainObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_35

    .line 625
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbMd5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_35
    iget-wide v4, v0, Lio/realm/at$a;->q:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_36

    .line 628
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbMd5\' is required. Either set @Required to field \'mainObbMd5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_36
    const-string v1, "patchObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 631
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_37
    const-string v1, "patchObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_38

    .line 634
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_38
    iget-wide v4, v0, Lio/realm/at$a;->r:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_39

    .line 637
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbName\' is required. Either set @Required to field \'patchObbName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_39
    const-string v1, "patchObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 640
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_3a
    const-string v1, "patchObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3b

    .line 643
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_3b
    iget-wide v4, v0, Lio/realm/at$a;->s:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 646
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbPath\' is required. Either set @Required to field \'patchObbPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_3c
    const-string v1, "patchObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 649
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbMd5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_3d
    const-string v1, "patchObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_3e

    .line 652
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbMd5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_3e
    iget-wide v4, v0, Lio/realm/at$a;->t:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_40

    .line 655
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbMd5\' is required. Either set @Required to field \'patchObbMd5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_3f
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Update\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_40
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1644
    if-ne p0, p1, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return v0

    .line 1645
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1646
    :cond_3
    check-cast p1, Lio/realm/at;

    .line 1648
    iget-object v2, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 1649
    iget-object v3, p1, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 1650
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1652
    :cond_6
    iget-object v2, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1653
    iget-object v3, p1, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 1654
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1656
    :cond_9
    iget-object v2, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v4}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v4

    invoke-interface {v4}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1631
    iget-object v1, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 1632
    iget-object v2, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1633
    iget-object v3, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1636
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1637
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1638
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1639
    return v0

    :cond_1
    move v1, v0

    .line 1636
    goto :goto_0
.end method

.method public realmGet$alternativeApkPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 326
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$apkPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 248
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$appId()J
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 170
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$excluded()Z
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 300
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->g(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$fileSize()D
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 263
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->i(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 196
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$label()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 181
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbMd5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 371
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 341
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 356
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 233
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 155
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbMd5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 416
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->t:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 386
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 401
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->s:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$timestamp()J
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 222
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$trustedBadge()Ljava/lang/String;
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 311
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$updateVersionCode()I
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 289
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$updateVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 274
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$versionCode()I
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 211
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmSet$alternativeApkPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 331
    if-nez p1, :cond_0

    .line 332
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->n:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$apkPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 253
    if-nez p1, :cond_0

    .line 254
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->h:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$appId(J)V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 175
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->b:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 176
    return-void
.end method

.method public realmSet$excluded(Z)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 305
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->l:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JZ)V

    .line 306
    return-void
.end method

.method public realmSet$fileSize(D)V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 268
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->i:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JD)V

    .line 269
    return-void
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 201
    if-nez p1, :cond_0

    .line 202
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$label(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbMd5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 376
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->q:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 346
    if-nez p1, :cond_0

    .line 347
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->o:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 361
    if-nez p1, :cond_0

    .line 362
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->p:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 238
    if-nez p1, :cond_0

    .line 239
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->g:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 160
    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbMd5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 420
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 421
    if-nez p1, :cond_0

    .line 422
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->t:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->t:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 391
    if-nez p1, :cond_0

    .line 392
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 396
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->r:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 405
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 406
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->s:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->s:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$timestamp(J)V
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 227
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->f:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 228
    return-void
.end method

.method public realmSet$trustedBadge(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 316
    if-nez p1, :cond_0

    .line 317
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->m:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$updateVersionCode(I)V
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 294
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->k:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 295
    return-void
.end method

.method public realmSet$updateVersionName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 279
    if-nez p1, :cond_0

    .line 280
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$versionCode(I)V
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 216
    iget-object v0, p0, Lio/realm/at;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/at;->a:Lio/realm/at$a;

    iget-wide v2, v1, Lio/realm/at$a;->e:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1537
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    const-string v0, "Invalid object"

    .line 1621
    :goto_0
    return-object v0

    .line 1540
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Update = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1541
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-virtual {p0}, Lio/realm/at;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/at;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    const-string v0, "{appId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    invoke-virtual {p0}, Lio/realm/at;->realmGet$appId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1547
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string v0, "{label:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p0}, Lio/realm/at;->realmGet$label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/at;->realmGet$label()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const-string v0, "{icon:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {p0}, Lio/realm/at;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/at;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    const-string v0, "{versionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {p0}, Lio/realm/at;->realmGet$versionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1559
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    const-string v0, "{timestamp:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {p0}, Lio/realm/at;->realmGet$timestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1563
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    const-string v0, "{md5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {p0}, Lio/realm/at;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/at;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v0, "{apkPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-virtual {p0}, Lio/realm/at;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/at;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v0, "{fileSize:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-virtual {p0}, Lio/realm/at;->realmGet$fileSize()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1575
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    const-string v0, "{updateVersionName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    invoke-virtual {p0}, Lio/realm/at;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/realm/at;->realmGet$updateVersionName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    const-string v0, "{updateVersionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    invoke-virtual {p0}, Lio/realm/at;->realmGet$updateVersionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1583
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    const-string v0, "{excluded:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {p0}, Lio/realm/at;->realmGet$excluded()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1587
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    const-string v0, "{trustedBadge:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {p0}, Lio/realm/at;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/realm/at;->realmGet$trustedBadge()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    const-string v0, "{alternativeApkPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    invoke-virtual {p0}, Lio/realm/at;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lio/realm/at;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    const-string v0, "{mainObbName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual {p0}, Lio/realm/at;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lio/realm/at;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    const-string v0, "{mainObbPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {p0}, Lio/realm/at;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lio/realm/at;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    const-string v0, "{mainObbMd5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1606
    invoke-virtual {p0}, Lio/realm/at;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lio/realm/at;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    const-string v0, "{patchObbName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-virtual {p0}, Lio/realm/at;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lio/realm/at;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    const-string v0, "{patchObbPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {p0}, Lio/realm/at;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lio/realm/at;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    const-string v0, "{patchObbMd5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-virtual {p0}, Lio/realm/at;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lio/realm/at;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1542
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 1550
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 1554
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 1566
    :cond_4
    const-string v0, "null"

    goto/16 :goto_4

    .line 1570
    :cond_5
    const-string v0, "null"

    goto/16 :goto_5

    .line 1578
    :cond_6
    const-string v0, "null"

    goto/16 :goto_6

    .line 1590
    :cond_7
    const-string v0, "null"

    goto/16 :goto_7

    .line 1594
    :cond_8
    const-string v0, "null"

    goto/16 :goto_8

    .line 1598
    :cond_9
    const-string v0, "null"

    goto/16 :goto_9

    .line 1602
    :cond_a
    const-string v0, "null"

    goto/16 :goto_a

    .line 1606
    :cond_b
    const-string v0, "null"

    goto/16 :goto_b

    .line 1610
    :cond_c
    const-string v0, "null"

    goto :goto_c

    .line 1614
    :cond_d
    const-string v0, "null"

    goto :goto_d

    .line 1618
    :cond_e
    const-string v0, "null"

    goto :goto_e
.end method
