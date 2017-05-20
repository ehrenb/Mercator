.class public Lio/realm/ak;
.super Lcm/aptoide/pt/database/realm/Rollback;
.source "RollbackRealmProxy.java"

# interfaces
.implements Lio/realm/al;
.implements Lio/realm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/ak$a;
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
.field private final a:Lio/realm/ak$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "action"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "confirmed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "md5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "appName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "versionCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "versionName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "alternativeApkPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v1, "apkPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "mainObbName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v1, "patchObbMd5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "patchObbPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "patchObbName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "mainObbMd5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "mainObbPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/ak;->c:Ljava/util/List;

    .line 135
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/Rollback;-><init>()V

    .line 138
    check-cast p1, Lio/realm/ak$a;

    iput-object p1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    .line 139
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    .line 140
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 1156
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

    .line 1157
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1262
    :goto_0
    return-wide v4

    .line 1159
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1160
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 1161
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/ak$a;

    .line 1162
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 1164
    check-cast v4, Lio/realm/al;

    invoke-interface {v4}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1165
    if-eqz v9, :cond_10

    move-object v4, p1

    .line 1166
    check-cast v4, Lio/realm/al;

    invoke-interface {v4}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v4

    .line 1168
    :goto_1
    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 1169
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 1170
    if-eqz v9, :cond_1

    move-object v6, p1

    .line 1171
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1174
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 1175
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$action()Ljava/lang/String;

    move-result-object v6

    .line 1176
    if-eqz v6, :cond_2

    .line 1177
    iget-wide v2, v8, Lio/realm/ak$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 1181
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 1182
    if-eqz v6, :cond_3

    .line 1183
    iget-wide v2, v8, Lio/realm/ak$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1187
    :goto_3
    iget-wide v2, v8, Lio/realm/ak$a;->d:J

    move-object v6, p1

    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$confirmed()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    move-object v2, p1

    .line 1188
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$icon()Ljava/lang/String;

    move-result-object v6

    .line 1189
    if-eqz v6, :cond_4

    .line 1190
    iget-wide v2, v8, Lio/realm/ak$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, p1

    .line 1194
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$md5()Ljava/lang/String;

    move-result-object v6

    .line 1195
    if-eqz v6, :cond_5

    .line 1196
    iget-wide v2, v8, Lio/realm/ak$a;->f:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_5
    move-object v2, p1

    .line 1200
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$appName()Ljava/lang/String;

    move-result-object v6

    .line 1201
    if-eqz v6, :cond_6

    .line 1202
    iget-wide v2, v8, Lio/realm/ak$a;->g:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1206
    :goto_6
    iget-wide v2, v8, Lio/realm/ak$a;->h:J

    move-object v6, p1

    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$versionCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1207
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$versionName()Ljava/lang/String;

    move-result-object v6

    .line 1208
    if-eqz v6, :cond_7

    .line 1209
    iget-wide v2, v8, Lio/realm/ak$a;->i:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1213
    :goto_7
    iget-wide v2, v8, Lio/realm/ak$a;->j:J

    move-object v6, p1

    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$appId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1214
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v6

    .line 1215
    if-eqz v6, :cond_8

    .line 1216
    iget-wide v2, v8, Lio/realm/ak$a;->k:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_8
    move-object v2, p1

    .line 1220
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v6

    .line 1221
    if-eqz v6, :cond_9

    .line 1222
    iget-wide v2, v8, Lio/realm/ak$a;->l:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v2, p1

    .line 1226
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v6

    .line 1227
    if-eqz v6, :cond_a

    .line 1228
    iget-wide v2, v8, Lio/realm/ak$a;->m:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_a
    move-object v2, p1

    .line 1232
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v6

    .line 1233
    if-eqz v6, :cond_b

    .line 1234
    iget-wide v2, v8, Lio/realm/ak$a;->n:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_b
    move-object v2, p1

    .line 1238
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v6

    .line 1239
    if-eqz v6, :cond_c

    .line 1240
    iget-wide v2, v8, Lio/realm/ak$a;->o:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_c
    move-object v2, p1

    .line 1244
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v6

    .line 1245
    if-eqz v6, :cond_d

    .line 1246
    iget-wide v2, v8, Lio/realm/ak$a;->p:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_d
    move-object v2, p1

    .line 1250
    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v6

    .line 1251
    if-eqz v6, :cond_e

    .line 1252
    iget-wide v2, v8, Lio/realm/ak$a;->q:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1256
    :goto_e
    check-cast p1, Lio/realm/al;

    invoke-interface {p1}, Lio/realm/al;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v6

    .line 1257
    if-eqz v6, :cond_f

    .line 1258
    iget-wide v2, v8, Lio/realm/ak$a;->r:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1179
    :cond_2
    iget-wide v2, v8, Lio/realm/ak$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 1185
    :cond_3
    iget-wide v2, v8, Lio/realm/ak$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1192
    :cond_4
    iget-wide v2, v8, Lio/realm/ak$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 1198
    :cond_5
    iget-wide v2, v8, Lio/realm/ak$a;->f:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_5

    .line 1204
    :cond_6
    iget-wide v2, v8, Lio/realm/ak$a;->g:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_6

    .line 1211
    :cond_7
    iget-wide v2, v8, Lio/realm/ak$a;->i:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_7

    .line 1218
    :cond_8
    iget-wide v2, v8, Lio/realm/ak$a;->k:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_8

    .line 1224
    :cond_9
    iget-wide v2, v8, Lio/realm/ak$a;->l:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_9

    .line 1230
    :cond_a
    iget-wide v2, v8, Lio/realm/ak$a;->m:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_a

    .line 1236
    :cond_b
    iget-wide v2, v8, Lio/realm/ak$a;->n:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_b

    .line 1242
    :cond_c
    iget-wide v2, v8, Lio/realm/ak$a;->o:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_c

    .line 1248
    :cond_d
    iget-wide v2, v8, Lio/realm/ak$a;->p:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_d

    .line 1254
    :cond_e
    iget-wide v2, v8, Lio/realm/ak$a;->q:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_e

    .line 1260
    :cond_f
    iget-wide v2, v8, Lio/realm/ak$a;->r:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    :cond_10
    move-wide v4, v6

    goto/16 :goto_1
.end method

.method public static a(Lcm/aptoide/pt/database/realm/Rollback;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/Rollback;"
        }
    .end annotation

    .prologue
    .line 1382
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 1383
    :cond_0
    const/4 v0, 0x0

    .line 1417
    :goto_0
    return-object v0

    .line 1385
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 1387
    if-eqz v0, :cond_3

    .line 1389
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 1390
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    goto :goto_0

    .line 1392
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/Rollback;

    .line 1393
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 1399
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/al;->realmSet$timestamp(J)V

    move-object v0, v1

    .line 1400
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$action()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$action(Ljava/lang/String;)V

    move-object v0, v1

    .line 1401
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1402
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$confirmed()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$confirmed(Z)V

    move-object v0, v1

    .line 1403
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, v1

    .line 1404
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1405
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$appName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$appName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1406
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$versionCode(I)V

    move-object v0, v1

    .line 1407
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1408
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$appId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/al;->realmSet$appId(J)V

    move-object v0, v1

    .line 1409
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1410
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$apkPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1411
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1412
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1413
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1414
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1415
    check-cast v0, Lio/realm/al;

    move-object v2, p0

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1416
    check-cast v0, Lio/realm/al;

    check-cast p0, Lio/realm/al;

    invoke-interface {p0}, Lio/realm/al;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/al;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1417
    goto/16 :goto_0

    .line 1396
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/Rollback;-><init>()V

    .line 1397
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/database/realm/Rollback;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Rollback;"
        }
    .end annotation

    .prologue
    .line 1421
    move-object v0, p1

    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$action()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$action(Ljava/lang/String;)V

    move-object v0, p1

    .line 1422
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$packageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1423
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$confirmed()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$confirmed(Z)V

    move-object v0, p1

    .line 1424
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$icon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, p1

    .line 1425
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$md5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1426
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$appName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$appName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1427
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$versionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$versionCode(I)V

    move-object v0, p1

    .line 1428
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$versionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1429
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$appId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/al;->realmSet$appId(J)V

    move-object v0, p1

    .line 1430
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1431
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$apkPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1432
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1433
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1434
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1435
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1436
    check-cast v0, Lio/realm/al;

    move-object v1, p2

    check-cast v1, Lio/realm/al;

    invoke-interface {v1}, Lio/realm/al;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1437
    check-cast v0, Lio/realm/al;

    check-cast p2, Lio/realm/al;

    invoke-interface {p2}, Lio/realm/al;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/al;->realmSet$mainObbPath(Ljava/lang/String;)V

    .line 1438
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Rollback;"
        }
    .end annotation

    .prologue
    .line 918
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

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
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

    .line 947
    :goto_0
    return-object p1

    .line 924
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 925
    if-eqz v0, :cond_2

    .line 926
    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    move-object p1, v0

    goto :goto_0

    .line 928
    :cond_2
    const/4 v1, 0x0

    .line 930
    if-eqz p2, :cond_5

    .line 931
    const-class v0, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 932
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    move-object v0, p1

    .line 933
    check-cast v0, Lio/realm/al;

    invoke-interface {v0}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lio/realm/internal/Table;->c(JJ)J

    move-result-wide v4

    .line 934
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 935
    new-instance v1, Lio/realm/ak;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v0, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/ak;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 936
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 937
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 938
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 944
    :goto_1
    if-eqz v0, :cond_4

    .line 945
    invoke-static {p0, v1, p1, p3}, Lio/realm/ak;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/database/realm/Rollback;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object p1

    goto :goto_0

    .line 940
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 947
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lio/realm/ak;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v0, p2

    goto :goto_1
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 397
    const-string v0, "class_Rollback"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const-string v0, "class_Rollback"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 399
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 400
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "action"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 401
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 402
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "confirmed"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 403
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 404
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 405
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "appName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 406
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 407
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 408
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "appId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 409
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "alternativeApkPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 410
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "apkPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 411
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 412
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbMd5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 413
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 414
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 415
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbMd5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 416
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 417
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 418
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 421
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_Rollback"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    const-string v0, "class_Rollback"

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
    .line 1266
    const-class v2, Lcm/aptoide/pt/database/realm/Rollback;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 1267
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/ak$a;

    .line 1269
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 1271
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1272
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/Rollback;

    .line 1273
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1274
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

    .line 1275
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

    .line 1278
    :cond_1
    const-wide/16 v8, -0x1

    move-object v6, v15

    .line 1279
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1280
    if-eqz v10, :cond_12

    move-object v6, v15

    .line 1281
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lio/realm/internal/Table;->nativeFindFirstInt(JJJ)J

    move-result-wide v6

    .line 1283
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_2

    .line 1284
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 1285
    if-eqz v10, :cond_2

    move-object v8, v15

    .line 1286
    check-cast v8, Lio/realm/al;

    invoke-interface {v8}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :cond_2
    move-wide v10, v6

    .line 1289
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 1290
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$action()Ljava/lang/String;

    move-result-object v12

    .line 1291
    if-eqz v12, :cond_3

    .line 1292
    iget-wide v8, v14, Lio/realm/ak$a;->b:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v6, v15

    .line 1296
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$packageName()Ljava/lang/String;

    move-result-object v12

    .line 1297
    if-eqz v12, :cond_4

    .line 1298
    iget-wide v8, v14, Lio/realm/ak$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1302
    :goto_3
    iget-wide v8, v14, Lio/realm/ak$a;->d:J

    move-object v6, v15

    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$confirmed()Z

    move-result v12

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    move-object v6, v15

    .line 1303
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$icon()Ljava/lang/String;

    move-result-object v12

    .line 1304
    if-eqz v12, :cond_5

    .line 1305
    iget-wide v8, v14, Lio/realm/ak$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v6, v15

    .line 1309
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$md5()Ljava/lang/String;

    move-result-object v12

    .line 1310
    if-eqz v12, :cond_6

    .line 1311
    iget-wide v8, v14, Lio/realm/ak$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_5
    move-object v6, v15

    .line 1315
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$appName()Ljava/lang/String;

    move-result-object v12

    .line 1316
    if-eqz v12, :cond_7

    .line 1317
    iget-wide v8, v14, Lio/realm/ak$a;->g:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1321
    :goto_6
    iget-wide v8, v14, Lio/realm/ak$a;->h:J

    move-object v6, v15

    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$versionCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1322
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$versionName()Ljava/lang/String;

    move-result-object v12

    .line 1323
    if-eqz v12, :cond_8

    .line 1324
    iget-wide v8, v14, Lio/realm/ak$a;->i:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1328
    :goto_7
    iget-wide v8, v14, Lio/realm/ak$a;->j:J

    move-object v6, v15

    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$appId()J

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1329
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v12

    .line 1330
    if-eqz v12, :cond_9

    .line 1331
    iget-wide v8, v14, Lio/realm/ak$a;->k:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_8
    move-object v6, v15

    .line 1335
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v12

    .line 1336
    if-eqz v12, :cond_a

    .line 1337
    iget-wide v8, v14, Lio/realm/ak$a;->l:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v6, v15

    .line 1341
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v12

    .line 1342
    if-eqz v12, :cond_b

    .line 1343
    iget-wide v8, v14, Lio/realm/ak$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_a
    move-object v6, v15

    .line 1347
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v12

    .line 1348
    if-eqz v12, :cond_c

    .line 1349
    iget-wide v8, v14, Lio/realm/ak$a;->n:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_b
    move-object v6, v15

    .line 1353
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v12

    .line 1354
    if-eqz v12, :cond_d

    .line 1355
    iget-wide v8, v14, Lio/realm/ak$a;->o:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_c
    move-object v6, v15

    .line 1359
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v12

    .line 1360
    if-eqz v12, :cond_e

    .line 1361
    iget-wide v8, v14, Lio/realm/ak$a;->p:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_d
    move-object v6, v15

    .line 1365
    check-cast v6, Lio/realm/al;

    invoke-interface {v6}, Lio/realm/al;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v12

    .line 1366
    if-eqz v12, :cond_f

    .line 1367
    iget-wide v8, v14, Lio/realm/ak$a;->q:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1371
    :goto_e
    check-cast v15, Lio/realm/al;

    invoke-interface {v15}, Lio/realm/al;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v12

    .line 1372
    if-eqz v12, :cond_10

    .line 1373
    iget-wide v8, v14, Lio/realm/ak$a;->r:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1294
    :cond_3
    iget-wide v8, v14, Lio/realm/ak$a;->b:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 1300
    :cond_4
    iget-wide v8, v14, Lio/realm/ak$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1307
    :cond_5
    iget-wide v8, v14, Lio/realm/ak$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 1313
    :cond_6
    iget-wide v8, v14, Lio/realm/ak$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_5

    .line 1319
    :cond_7
    iget-wide v8, v14, Lio/realm/ak$a;->g:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_6

    .line 1326
    :cond_8
    iget-wide v8, v14, Lio/realm/ak$a;->i:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_7

    .line 1333
    :cond_9
    iget-wide v8, v14, Lio/realm/ak$a;->k:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_8

    .line 1339
    :cond_a
    iget-wide v8, v14, Lio/realm/ak$a;->l:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_9

    .line 1345
    :cond_b
    iget-wide v8, v14, Lio/realm/ak$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_a

    .line 1351
    :cond_c
    iget-wide v8, v14, Lio/realm/ak$a;->n:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_b

    .line 1357
    :cond_d
    iget-wide v8, v14, Lio/realm/ak$a;->o:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_c

    .line 1363
    :cond_e
    iget-wide v8, v14, Lio/realm/ak$a;->p:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_d

    .line 1369
    :cond_f
    iget-wide v8, v14, Lio/realm/ak$a;->q:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_e

    .line 1375
    :cond_10
    iget-wide v8, v14, Lio/realm/ak$a;->r:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 1379
    :cond_11
    return-void

    :cond_12
    move-wide v6, v8

    goto/16 :goto_1
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Rollback;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Rollback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Rollback;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Rollback;"
        }
    .end annotation

    .prologue
    .line 953
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 954
    if-eqz v0, :cond_0

    .line 955
    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    .line 977
    :goto_0
    return-object v0

    .line 957
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/Rollback;

    move-object v0, p1

    check-cast v0, Lio/realm/al;

    invoke-interface {v0}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Rollback;

    move-object v1, v0

    .line 958
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 959
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$timestamp()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/al;->realmSet$timestamp(J)V

    move-object v1, v0

    .line 960
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$action()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$action(Ljava/lang/String;)V

    move-object v1, v0

    .line 961
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 962
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$confirmed()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$confirmed(Z)V

    move-object v1, v0

    .line 963
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$icon(Ljava/lang/String;)V

    move-object v1, v0

    .line 964
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$md5(Ljava/lang/String;)V

    move-object v1, v0

    .line 965
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$appName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$appName(Ljava/lang/String;)V

    move-object v1, v0

    .line 966
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$versionCode(I)V

    move-object v1, v0

    .line 967
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$versionName(Ljava/lang/String;)V

    move-object v1, v0

    .line 968
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$appId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/al;->realmSet$appId(J)V

    move-object v1, v0

    .line 969
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 970
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$apkPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 971
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v1, v0

    .line 972
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v1, v0

    .line 973
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 974
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v1, v0

    .line 975
    check-cast v1, Lio/realm/al;

    move-object v2, p1

    check-cast v2, Lio/realm/al;

    invoke-interface {v2}, Lio/realm/al;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v1, v0

    .line 976
    check-cast v1, Lio/realm/al;

    check-cast p1, Lio/realm/al;

    invoke-interface {p1}, Lio/realm/al;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/al;->realmSet$mainObbPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/ak$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x12

    .line 425
    const-string v0, "class_Rollback"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 426
    const-string v0, "class_Rollback"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 18 but was "

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

    .line 430
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 431
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 432
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 435
    :cond_1
    new-instance v0, Lio/realm/ak$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/ak$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 437
    const-string v1, "timestamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 438
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'timestamp\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_2
    const-string v1, "timestamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 441
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'timestamp\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_3
    iget-wide v4, v0, Lio/realm/ak$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lio/realm/ak$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot migrate an object with null value in field \'timestamp\'. Either maintain the same type for primary key field \'timestamp\', or remove the object with null value before migration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "timestamp"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 447
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'timestamp\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_5
    const-string v1, "timestamp"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 450
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'timestamp\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_6
    const-string v1, "action"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 453
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'action\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_7
    const-string v1, "action"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_8

    .line 456
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'action\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_8
    iget-wide v4, v0, Lio/realm/ak$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 459
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'action\' is required. Either set @Required to field \'action\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_9
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 462
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_a
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 465
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_b
    iget-wide v4, v0, Lio/realm/ak$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 468
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'packageName\' is required. Either set @Required to field \'packageName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_c
    const-string v1, "confirmed"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 471
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'confirmed\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_d
    const-string v1, "confirmed"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 474
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'confirmed\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_e
    iget-wide v4, v0, Lio/realm/ak$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 477
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'confirmed\' does support null values in the existing Realm file. Use corresponding boxed type for field \'confirmed\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_f
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 480
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'icon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_10
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 483
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'icon\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_11
    iget-wide v4, v0, Lio/realm/ak$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 486
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'icon\' is required. Either set @Required to field \'icon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_12
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 489
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'md5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_13
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 492
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'md5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_14
    iget-wide v4, v0, Lio/realm/ak$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_15

    .line 495
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'md5\' is required. Either set @Required to field \'md5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_15
    const-string v1, "appName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 498
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'appName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_16
    const-string v1, "appName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 501
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'appName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_17
    iget-wide v4, v0, Lio/realm/ak$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_18

    .line 504
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'appName\' is required. Either set @Required to field \'appName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_18
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 507
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_19
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 510
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'versionCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_1a
    iget-wide v4, v0, Lio/realm/ak$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 513
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'versionCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1b
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 516
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_1c
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 519
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'versionName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1d
    iget-wide v4, v0, Lio/realm/ak$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 522
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionName\' is required. Either set @Required to field \'versionName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_1e
    const-string v1, "appId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 525
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'appId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1f
    const-string v1, "appId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 528
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'appId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_20
    iget-wide v4, v0, Lio/realm/ak$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 531
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'appId\' does support null values in the existing Realm file. Use corresponding boxed type for field \'appId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_21
    const-string v1, "alternativeApkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 534
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'alternativeApkPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_22
    const-string v1, "alternativeApkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 537
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'alternativeApkPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_23
    iget-wide v4, v0, Lio/realm/ak$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_24

    .line 540
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'alternativeApkPath\' is required. Either set @Required to field \'alternativeApkPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_24
    const-string v1, "apkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 543
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'apkPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_25
    const-string v1, "apkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_26

    .line 546
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'apkPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_26
    iget-wide v4, v0, Lio/realm/ak$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_27

    .line 549
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'apkPath\' is required. Either set @Required to field \'apkPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_27
    const-string v1, "mainObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 552
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_28
    const-string v1, "mainObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_29

    .line 555
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_29
    iget-wide v4, v0, Lio/realm/ak$a;->m:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 558
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbName\' is required. Either set @Required to field \'mainObbName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_2a
    const-string v1, "patchObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 561
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbMd5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_2b
    const-string v1, "patchObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2c

    .line 564
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbMd5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_2c
    iget-wide v4, v0, Lio/realm/ak$a;->n:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 567
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbMd5\' is required. Either set @Required to field \'patchObbMd5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_2d
    const-string v1, "patchObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 570
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_2e
    const-string v1, "patchObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2f

    .line 573
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_2f
    iget-wide v4, v0, Lio/realm/ak$a;->o:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 576
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbPath\' is required. Either set @Required to field \'patchObbPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_30
    const-string v1, "patchObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 579
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_31
    const-string v1, "patchObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_32

    .line 582
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_32
    iget-wide v4, v0, Lio/realm/ak$a;->p:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_33

    .line 585
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbName\' is required. Either set @Required to field \'patchObbName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_33
    const-string v1, "mainObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 588
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbMd5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_34
    const-string v1, "mainObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_35

    .line 591
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbMd5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_35
    iget-wide v4, v0, Lio/realm/ak$a;->q:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_36

    .line 594
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbMd5\' is required. Either set @Required to field \'mainObbMd5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_36
    const-string v1, "mainObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 597
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_37
    const-string v1, "mainObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_38

    .line 600
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_38
    iget-wide v4, v0, Lio/realm/ak$a;->r:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 603
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbPath\' is required. Either set @Required to field \'mainObbPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_39
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Rollback\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_3a
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1542
    if-ne p0, p1, :cond_1

    .line 1556
    :cond_0
    :goto_0
    return v0

    .line 1543
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

    .line 1544
    :cond_3
    check-cast p1, Lio/realm/ak;

    .line 1546
    iget-object v2, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 1547
    iget-object v3, p1, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 1548
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1550
    :cond_6
    iget-object v2, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1551
    iget-object v3, p1, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 1552
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1554
    :cond_9
    iget-object v2, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/ak;->b:Lio/realm/t;

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

    .line 1529
    iget-object v1, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 1530
    iget-object v2, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1531
    iget-object v3, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1534
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1535
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1536
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1537
    return v0

    :cond_1
    move v1, v0

    .line 1534
    goto :goto_0
.end method

.method public realmGet$action()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 156
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$alternativeApkPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 279
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$apkPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 294
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$appId()J
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 268
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$appName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 227
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$confirmed()Z
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 186
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->g(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 197
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbMd5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 369
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 309
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 384
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 212
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 171
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbMd5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 324
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 354
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 339
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$timestamp()J
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 145
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$versionCode()I
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 242
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 253
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$action(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 161
    if-nez p1, :cond_0

    .line 162
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$alternativeApkPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 284
    if-nez p1, :cond_0

    .line 285
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->k:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$apkPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 299
    if-nez p1, :cond_0

    .line 300
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->l:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$appId(J)V
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 273
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->j:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 274
    return-void
.end method

.method public realmSet$appName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 232
    if-nez p1, :cond_0

    .line 233
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->g:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$confirmed(Z)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 191
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JZ)V

    .line 192
    return-void
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 202
    if-nez p1, :cond_0

    .line 203
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbMd5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 374
    if-nez p1, :cond_0

    .line 375
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->q:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 314
    if-nez p1, :cond_0

    .line 315
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->m:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 389
    if-nez p1, :cond_0

    .line 390
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->r:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->r:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->f:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 176
    if-nez p1, :cond_0

    .line 177
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbMd5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 329
    if-nez p1, :cond_0

    .line 330
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->n:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 359
    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->p:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 344
    if-nez p1, :cond_0

    .line 345
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->o:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$timestamp(J)V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 150
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->a:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 151
    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 6

    .prologue
    .line 246
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 247
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->h:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 248
    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 258
    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lio/realm/ak;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/ak;->a:Lio/realm/ak$a;

    iget-wide v2, v1, Lio/realm/ak$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1443
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1444
    const-string v0, "Invalid object"

    .line 1519
    :goto_0
    return-object v0

    .line 1446
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Rollback = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1447
    const-string v0, "{timestamp:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$timestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1449
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    const-string v0, "{action:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$action()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$action()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-string v0, "{confirmed:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$confirmed()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1461
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v0, "{icon:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const-string v0, "{md5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const-string v0, "{appName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$appName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$appName()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    const-string v0, "{versionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$versionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1477
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const-string v0, "{versionName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    const-string v0, "{appId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$appId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1485
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    const-string v0, "{alternativeApkPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    const-string v0, "{apkPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$apkPath()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    const-string v0, "{mainObbName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    const-string v0, "{patchObbMd5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    const-string v0, "{patchObbPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    const-string v0, "{patchObbName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    const-string v0, "{mainObbMd5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    const-string v0, "{mainObbPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {p0}, Lio/realm/ak;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lio/realm/ak;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1452
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 1456
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 1464
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 1468
    :cond_4
    const-string v0, "null"

    goto/16 :goto_4

    .line 1472
    :cond_5
    const-string v0, "null"

    goto/16 :goto_5

    .line 1480
    :cond_6
    const-string v0, "null"

    goto/16 :goto_6

    .line 1488
    :cond_7
    const-string v0, "null"

    goto/16 :goto_7

    .line 1492
    :cond_8
    const-string v0, "null"

    goto/16 :goto_8

    .line 1496
    :cond_9
    const-string v0, "null"

    goto/16 :goto_9

    .line 1500
    :cond_a
    const-string v0, "null"

    goto/16 :goto_a

    .line 1504
    :cond_b
    const-string v0, "null"

    goto/16 :goto_b

    .line 1508
    :cond_c
    const-string v0, "null"

    goto :goto_c

    .line 1512
    :cond_d
    const-string v0, "null"

    goto :goto_d

    .line 1516
    :cond_e
    const-string v0, "null"

    goto :goto_e
.end method
