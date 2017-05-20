.class public Lio/realm/am;
.super Lcm/aptoide/pt/database/realm/Scheduled;
.source "ScheduledRealmProxy.java"

# interfaces
.implements Lio/realm/an;
.implements Lio/realm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/am$a;
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
.field private final a:Lio/realm/am$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "versionName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "md5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "verCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "storeName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "alternativeApkPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "mainObbName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v1, "mainObbPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "mainObbMd5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "patchObbName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "patchObbPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "patchObbMd5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v1, "isDownloading"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "appAction"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/am;->c:Ljava/util/List;

    .line 130
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/Scheduled;-><init>()V

    .line 133
    check-cast p1, Lio/realm/am$a;

    iput-object p1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    .line 134
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    .line 135
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1129
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

    .line 1130
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1236
    :goto_0
    return-wide v4

    .line 1132
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 1133
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 1134
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/am$a;

    .line 1135
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 1136
    check-cast v4, Lio/realm/an;

    invoke-interface {v4}, Lio/realm/an;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 1138
    if-nez v6, :cond_2

    .line 1139
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    .line 1143
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 1144
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 1145
    if-eqz v6, :cond_1

    .line 1146
    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1149
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 1150
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$name()Ljava/lang/String;

    move-result-object v6

    .line 1151
    if-eqz v6, :cond_3

    .line 1152
    iget-wide v2, v8, Lio/realm/am$a;->a:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 1156
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$versionName()Ljava/lang/String;

    move-result-object v6

    .line 1157
    if-eqz v6, :cond_4

    .line 1158
    iget-wide v2, v8, Lio/realm/am$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v2, p1

    .line 1162
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$icon()Ljava/lang/String;

    move-result-object v6

    .line 1163
    if-eqz v6, :cond_5

    .line 1164
    iget-wide v2, v8, Lio/realm/am$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, p1

    .line 1168
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$path()Ljava/lang/String;

    move-result-object v6

    .line 1169
    if-eqz v6, :cond_6

    .line 1170
    iget-wide v2, v8, Lio/realm/am$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_5
    move-object v2, p1

    .line 1174
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$md5()Ljava/lang/String;

    move-result-object v6

    .line 1175
    if-eqz v6, :cond_7

    .line 1176
    iget-wide v2, v8, Lio/realm/am$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1180
    :goto_6
    iget-wide v2, v8, Lio/realm/am$a;->f:J

    move-object v6, p1

    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$verCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1181
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$storeName()Ljava/lang/String;

    move-result-object v6

    .line 1182
    if-eqz v6, :cond_8

    .line 1183
    iget-wide v2, v8, Lio/realm/am$a;->h:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_7
    move-object v2, p1

    .line 1187
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v6

    .line 1188
    if-eqz v6, :cond_9

    .line 1189
    iget-wide v2, v8, Lio/realm/am$a;->i:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_8
    move-object v2, p1

    .line 1193
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v6

    .line 1194
    if-eqz v6, :cond_a

    .line 1195
    iget-wide v2, v8, Lio/realm/am$a;->j:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v2, p1

    .line 1199
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v6

    .line 1200
    if-eqz v6, :cond_b

    .line 1201
    iget-wide v2, v8, Lio/realm/am$a;->k:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_a
    move-object v2, p1

    .line 1205
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v6

    .line 1206
    if-eqz v6, :cond_c

    .line 1207
    iget-wide v2, v8, Lio/realm/am$a;->l:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_b
    move-object v2, p1

    .line 1211
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v6

    .line 1212
    if-eqz v6, :cond_d

    .line 1213
    iget-wide v2, v8, Lio/realm/am$a;->m:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_c
    move-object v2, p1

    .line 1217
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v6

    .line 1218
    if-eqz v6, :cond_e

    .line 1219
    iget-wide v2, v8, Lio/realm/am$a;->n:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_d
    move-object v2, p1

    .line 1223
    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v6

    .line 1224
    if-eqz v6, :cond_f

    .line 1225
    iget-wide v2, v8, Lio/realm/am$a;->o:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1229
    :goto_e
    iget-wide v2, v8, Lio/realm/am$a;->p:J

    move-object v6, p1

    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$isDownloading()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    .line 1230
    check-cast p1, Lio/realm/an;

    invoke-interface {p1}, Lio/realm/an;->realmGet$appAction()Ljava/lang/String;

    move-result-object v6

    .line 1231
    if-eqz v6, :cond_10

    .line 1232
    iget-wide v2, v8, Lio/realm/am$a;->q:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1141
    :cond_2
    invoke-static {v0, v1, v2, v3, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_1

    .line 1154
    :cond_3
    iget-wide v2, v8, Lio/realm/am$a;->a:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 1160
    :cond_4
    iget-wide v2, v8, Lio/realm/am$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1166
    :cond_5
    iget-wide v2, v8, Lio/realm/am$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 1172
    :cond_6
    iget-wide v2, v8, Lio/realm/am$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_5

    .line 1178
    :cond_7
    iget-wide v2, v8, Lio/realm/am$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_6

    .line 1185
    :cond_8
    iget-wide v2, v8, Lio/realm/am$a;->h:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_7

    .line 1191
    :cond_9
    iget-wide v2, v8, Lio/realm/am$a;->i:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_8

    .line 1197
    :cond_a
    iget-wide v2, v8, Lio/realm/am$a;->j:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_9

    .line 1203
    :cond_b
    iget-wide v2, v8, Lio/realm/am$a;->k:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_a

    .line 1209
    :cond_c
    iget-wide v2, v8, Lio/realm/am$a;->l:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_b

    .line 1215
    :cond_d
    iget-wide v2, v8, Lio/realm/am$a;->m:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_c

    .line 1221
    :cond_e
    iget-wide v2, v8, Lio/realm/am$a;->n:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_d

    .line 1227
    :cond_f
    iget-wide v2, v8, Lio/realm/am$a;->o:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_e

    .line 1234
    :cond_10
    iget-wide v2, v8, Lio/realm/am$a;->q:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0
.end method

.method public static a(Lcm/aptoide/pt/database/realm/Scheduled;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/Scheduled;"
        }
    .end annotation

    .prologue
    .line 1357
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 1358
    :cond_0
    const/4 v0, 0x0

    .line 1391
    :goto_0
    return-object v0

    .line 1360
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 1362
    if-eqz v0, :cond_3

    .line 1364
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 1365
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    goto :goto_0

    .line 1367
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 1368
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 1374
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$name(Ljava/lang/String;)V

    move-object v0, v1

    .line 1375
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1376
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, v1

    .line 1377
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$path(Ljava/lang/String;)V

    move-object v0, v1

    .line 1378
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1379
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$verCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$verCode(I)V

    move-object v0, v1

    .line 1380
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1381
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$storeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$storeName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1382
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1383
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1384
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1385
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1386
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1387
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 1388
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1389
    check-cast v0, Lio/realm/an;

    move-object v2, p0

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$isDownloading()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$isDownloading(Z)V

    move-object v0, v1

    .line 1390
    check-cast v0, Lio/realm/an;

    check-cast p0, Lio/realm/an;

    invoke-interface {p0}, Lio/realm/an;->realmGet$appAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/an;->realmSet$appAction(Ljava/lang/String;)V

    move-object v0, v1

    .line 1391
    goto/16 :goto_0

    .line 1371
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/Scheduled;-><init>()V

    .line 1372
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;Lcm/aptoide/pt/database/realm/Scheduled;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Scheduled;"
        }
    .end annotation

    .prologue
    .line 1395
    move-object v0, p1

    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$name(Ljava/lang/String;)V

    move-object v0, p1

    .line 1396
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$versionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1397
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$icon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, p1

    .line 1398
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$path(Ljava/lang/String;)V

    move-object v0, p1

    .line 1399
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$md5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1400
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$verCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$verCode(I)V

    move-object v0, p1

    .line 1401
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$storeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$storeName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1402
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1403
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1404
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1405
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1406
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1407
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v0, p1

    .line 1408
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v0, p1

    .line 1409
    check-cast v0, Lio/realm/an;

    move-object v1, p2

    check-cast v1, Lio/realm/an;

    invoke-interface {v1}, Lio/realm/an;->realmGet$isDownloading()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$isDownloading(Z)V

    move-object v0, p1

    .line 1410
    check-cast v0, Lio/realm/an;

    check-cast p2, Lio/realm/an;

    invoke-interface {p2}, Lio/realm/an;->realmGet$appAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/an;->realmSet$appAction(Ljava/lang/String;)V

    .line 1411
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Scheduled;"
        }
    .end annotation

    .prologue
    .line 884
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

    .line 885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
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

    .line 919
    :goto_0
    return-object p1

    .line 890
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 891
    if-eqz v0, :cond_2

    .line 892
    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    move-object p1, v0

    goto :goto_0

    .line 894
    :cond_2
    const/4 v1, 0x0

    .line 896
    if-eqz p2, :cond_6

    .line 897
    const-class v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v4

    .line 898
    invoke-virtual {v4}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v0, p1

    .line 899
    check-cast v0, Lio/realm/an;

    invoke-interface {v0}, Lio/realm/an;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    .line 901
    if-nez v0, :cond_3

    .line 902
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v2

    .line 906
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 907
    new-instance v1, Lio/realm/am;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v5, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v0, v5}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/am;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 908
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 909
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 910
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 916
    :goto_2
    if-eqz v0, :cond_5

    .line 917
    invoke-static {p0, v1, p1, p3}, Lio/realm/am;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;Lcm/aptoide/pt/database/realm/Scheduled;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;

    move-result-object p1

    goto :goto_0

    .line 904
    :cond_3
    invoke-virtual {v4, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 912
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 919
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/am;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;

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

    .line 385
    const-string v0, "class_Scheduled"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const-string v0, "class_Scheduled"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 387
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 388
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 389
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 390
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "path"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 391
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 392
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "verCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 393
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 394
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "storeName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 395
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "alternativeApkPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 396
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 397
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 398
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "mainObbMd5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 399
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 400
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 401
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "patchObbMd5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 402
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "isDownloading"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 403
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "appAction"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 404
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 405
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_Scheduled"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const-string v0, "class_Scheduled"

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
    .line 1240
    const-class v2, Lcm/aptoide/pt/database/realm/Scheduled;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 1241
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/am$a;

    .line 1243
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 1245
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1246
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 1247
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1248
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

    .line 1249
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

    .line 1252
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$packageName()Ljava/lang/String;

    move-result-object v8

    .line 1254
    if-nez v8, :cond_3

    .line 1255
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    .line 1259
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 1260
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 1261
    if-eqz v8, :cond_2

    .line 1262
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :cond_2
    move-wide v10, v6

    .line 1265
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 1266
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$name()Ljava/lang/String;

    move-result-object v12

    .line 1267
    if-eqz v12, :cond_4

    .line 1268
    iget-wide v8, v14, Lio/realm/am$a;->a:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v6, v15

    .line 1272
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$versionName()Ljava/lang/String;

    move-result-object v12

    .line 1273
    if-eqz v12, :cond_5

    .line 1274
    iget-wide v8, v14, Lio/realm/am$a;->b:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v6, v15

    .line 1278
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$icon()Ljava/lang/String;

    move-result-object v12

    .line 1279
    if-eqz v12, :cond_6

    .line 1280
    iget-wide v8, v14, Lio/realm/am$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v6, v15

    .line 1284
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$path()Ljava/lang/String;

    move-result-object v12

    .line 1285
    if-eqz v12, :cond_7

    .line 1286
    iget-wide v8, v14, Lio/realm/am$a;->d:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_5
    move-object v6, v15

    .line 1290
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$md5()Ljava/lang/String;

    move-result-object v12

    .line 1291
    if-eqz v12, :cond_8

    .line 1292
    iget-wide v8, v14, Lio/realm/am$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1296
    :goto_6
    iget-wide v8, v14, Lio/realm/am$a;->f:J

    move-object v6, v15

    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$verCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1297
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$storeName()Ljava/lang/String;

    move-result-object v12

    .line 1298
    if-eqz v12, :cond_9

    .line 1299
    iget-wide v8, v14, Lio/realm/am$a;->h:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_7
    move-object v6, v15

    .line 1303
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v12

    .line 1304
    if-eqz v12, :cond_a

    .line 1305
    iget-wide v8, v14, Lio/realm/am$a;->i:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_8
    move-object v6, v15

    .line 1309
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v12

    .line 1310
    if-eqz v12, :cond_b

    .line 1311
    iget-wide v8, v14, Lio/realm/am$a;->j:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v6, v15

    .line 1315
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v12

    .line 1316
    if-eqz v12, :cond_c

    .line 1317
    iget-wide v8, v14, Lio/realm/am$a;->k:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_a
    move-object v6, v15

    .line 1321
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v12

    .line 1322
    if-eqz v12, :cond_d

    .line 1323
    iget-wide v8, v14, Lio/realm/am$a;->l:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_b
    move-object v6, v15

    .line 1327
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v12

    .line 1328
    if-eqz v12, :cond_e

    .line 1329
    iget-wide v8, v14, Lio/realm/am$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_c
    move-object v6, v15

    .line 1333
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v12

    .line 1334
    if-eqz v12, :cond_f

    .line 1335
    iget-wide v8, v14, Lio/realm/am$a;->n:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_d
    move-object v6, v15

    .line 1339
    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v12

    .line 1340
    if-eqz v12, :cond_10

    .line 1341
    iget-wide v8, v14, Lio/realm/am$a;->o:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1345
    :goto_e
    iget-wide v8, v14, Lio/realm/am$a;->p:J

    move-object v6, v15

    check-cast v6, Lio/realm/an;

    invoke-interface {v6}, Lio/realm/an;->realmGet$isDownloading()Z

    move-result v12

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    .line 1346
    check-cast v15, Lio/realm/an;

    invoke-interface {v15}, Lio/realm/an;->realmGet$appAction()Ljava/lang/String;

    move-result-object v12

    .line 1347
    if-eqz v12, :cond_11

    .line 1348
    iget-wide v8, v14, Lio/realm/am$a;->q:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 1257
    :cond_3
    invoke-static {v2, v3, v4, v5, v8}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 1270
    :cond_4
    iget-wide v8, v14, Lio/realm/am$a;->a:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 1276
    :cond_5
    iget-wide v8, v14, Lio/realm/am$a;->b:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1282
    :cond_6
    iget-wide v8, v14, Lio/realm/am$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 1288
    :cond_7
    iget-wide v8, v14, Lio/realm/am$a;->d:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_5

    .line 1294
    :cond_8
    iget-wide v8, v14, Lio/realm/am$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_6

    .line 1301
    :cond_9
    iget-wide v8, v14, Lio/realm/am$a;->h:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_7

    .line 1307
    :cond_a
    iget-wide v8, v14, Lio/realm/am$a;->i:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_8

    .line 1313
    :cond_b
    iget-wide v8, v14, Lio/realm/am$a;->j:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_9

    .line 1319
    :cond_c
    iget-wide v8, v14, Lio/realm/am$a;->k:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_a

    .line 1325
    :cond_d
    iget-wide v8, v14, Lio/realm/am$a;->l:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_b

    .line 1331
    :cond_e
    iget-wide v8, v14, Lio/realm/am$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_c

    .line 1337
    :cond_f
    iget-wide v8, v14, Lio/realm/am$a;->n:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_d

    .line 1343
    :cond_10
    iget-wide v8, v14, Lio/realm/am$a;->o:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_e

    .line 1350
    :cond_11
    iget-wide v8, v14, Lio/realm/am$a;->q:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 1354
    :cond_12
    return-void
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Scheduled;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Scheduled;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Scheduled;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Scheduled;"
        }
    .end annotation

    .prologue
    .line 925
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 926
    if-eqz v0, :cond_0

    .line 927
    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    .line 948
    :goto_0
    return-object v0

    .line 929
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/Scheduled;

    move-object v0, p1

    check-cast v0, Lio/realm/an;

    invoke-interface {v0}, Lio/realm/an;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Scheduled;

    move-object v1, v0

    .line 930
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 931
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$name(Ljava/lang/String;)V

    move-object v1, v0

    .line 932
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$versionName(Ljava/lang/String;)V

    move-object v1, v0

    .line 933
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$icon(Ljava/lang/String;)V

    move-object v1, v0

    .line 934
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$path(Ljava/lang/String;)V

    move-object v1, v0

    .line 935
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$md5(Ljava/lang/String;)V

    move-object v1, v0

    .line 936
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$verCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$verCode(I)V

    move-object v1, v0

    .line 937
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 938
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$storeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$storeName(Ljava/lang/String;)V

    move-object v1, v0

    .line 939
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$alternativeApkPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 940
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$mainObbName(Ljava/lang/String;)V

    move-object v1, v0

    .line 941
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$mainObbPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 942
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$mainObbMd5(Ljava/lang/String;)V

    move-object v1, v0

    .line 943
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$patchObbName(Ljava/lang/String;)V

    move-object v1, v0

    .line 944
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$patchObbPath(Ljava/lang/String;)V

    move-object v1, v0

    .line 945
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$patchObbMd5(Ljava/lang/String;)V

    move-object v1, v0

    .line 946
    check-cast v1, Lio/realm/an;

    move-object v2, p1

    check-cast v2, Lio/realm/an;

    invoke-interface {v2}, Lio/realm/an;->realmGet$isDownloading()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$isDownloading(Z)V

    move-object v1, v0

    .line 947
    check-cast v1, Lio/realm/an;

    check-cast p1, Lio/realm/an;

    invoke-interface {p1}, Lio/realm/an;->realmGet$appAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/an;->realmSet$appAction(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/am$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x11

    .line 412
    const-string v0, "class_Scheduled"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 413
    const-string v0, "class_Scheduled"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 17 but was "

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

    .line 417
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 418
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 419
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 422
    :cond_1
    new-instance v0, Lio/realm/am$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/am$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 424
    const-string v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 425
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'name\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_2
    const-string v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 428
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'name\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_3
    iget-wide v4, v0, Lio/realm/am$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 431
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'name\' is required. Either set @Required to field \'name\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_4
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 434
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_5
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6

    .line 437
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'versionName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_6
    iget-wide v4, v0, Lio/realm/am$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 440
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionName\' is required. Either set @Required to field \'versionName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_7
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 443
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'icon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_8
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_9

    .line 446
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'icon\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_9
    iget-wide v4, v0, Lio/realm/am$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_a

    .line 449
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'icon\' is required. Either set @Required to field \'icon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_a
    const-string v1, "path"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 452
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'path\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_b
    const-string v1, "path"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_c

    .line 455
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'path\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_c
    iget-wide v4, v0, Lio/realm/am$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_d

    .line 458
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'path\' is required. Either set @Required to field \'path\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_d
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 461
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'md5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_e
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_f

    .line 464
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'md5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_f
    iget-wide v4, v0, Lio/realm/am$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 467
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'md5\' is required. Either set @Required to field \'md5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_10
    const-string v1, "verCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 470
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'verCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_11
    const-string v1, "verCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_12

    .line 473
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'verCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_12
    iget-wide v4, v0, Lio/realm/am$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 476
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'verCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'verCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_13
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 479
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_14
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_15

    .line 482
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_15
    iget-wide v4, v0, Lio/realm/am$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_16

    .line 485
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@PrimaryKey field \'packageName\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_16
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_17

    .line 488
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'packageName\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_17
    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_18

    .line 491
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'packageName\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_18
    const-string v1, "storeName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 494
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'storeName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_19
    const-string v1, "storeName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 497
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'storeName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_1a
    iget-wide v4, v0, Lio/realm/am$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 500
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'storeName\' is required. Either set @Required to field \'storeName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_1b
    const-string v1, "alternativeApkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 503
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'alternativeApkPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_1c
    const-string v1, "alternativeApkPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 506
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'alternativeApkPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1d
    iget-wide v4, v0, Lio/realm/am$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 509
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'alternativeApkPath\' is required. Either set @Required to field \'alternativeApkPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1e
    const-string v1, "mainObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 512
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_1f
    const-string v1, "mainObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 515
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_20
    iget-wide v4, v0, Lio/realm/am$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_21

    .line 518
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbName\' is required. Either set @Required to field \'mainObbName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_21
    const-string v1, "mainObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 521
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_22
    const-string v1, "mainObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 524
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_23
    iget-wide v4, v0, Lio/realm/am$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_24

    .line 527
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbPath\' is required. Either set @Required to field \'mainObbPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_24
    const-string v1, "mainObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 530
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'mainObbMd5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_25
    const-string v1, "mainObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_26

    .line 533
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'mainObbMd5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_26
    iget-wide v4, v0, Lio/realm/am$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_27

    .line 536
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'mainObbMd5\' is required. Either set @Required to field \'mainObbMd5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_27
    const-string v1, "patchObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 539
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_28
    const-string v1, "patchObbName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_29

    .line 542
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_29
    iget-wide v4, v0, Lio/realm/am$a;->m:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 545
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbName\' is required. Either set @Required to field \'patchObbName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_2a
    const-string v1, "patchObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 548
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_2b
    const-string v1, "patchObbPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2c

    .line 551
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_2c
    iget-wide v4, v0, Lio/realm/am$a;->n:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 554
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbPath\' is required. Either set @Required to field \'patchObbPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_2d
    const-string v1, "patchObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 557
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'patchObbMd5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_2e
    const-string v1, "patchObbMd5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2f

    .line 560
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'patchObbMd5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_2f
    iget-wide v4, v0, Lio/realm/am$a;->o:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_30

    .line 563
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'patchObbMd5\' is required. Either set @Required to field \'patchObbMd5\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_30
    const-string v1, "isDownloading"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 566
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'isDownloading\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_31
    const-string v1, "isDownloading"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_32

    .line 569
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'isDownloading\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_32
    iget-wide v4, v0, Lio/realm/am$a;->p:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 572
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'isDownloading\' does support null values in the existing Realm file. Use corresponding boxed type for field \'isDownloading\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_33
    const-string v1, "appAction"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 575
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'appAction\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_34
    const-string v1, "appAction"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_35

    .line 578
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'appAction\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_35
    iget-wide v4, v0, Lio/realm/am$a;->q:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_37

    .line 581
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'appAction\' is required. Either set @Required to field \'appAction\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_36
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Scheduled\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_37
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1511
    if-ne p0, p1, :cond_1

    .line 1525
    :cond_0
    :goto_0
    return v0

    .line 1512
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

    .line 1513
    :cond_3
    check-cast p1, Lio/realm/am;

    .line 1515
    iget-object v2, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 1516
    iget-object v3, p1, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 1517
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1519
    :cond_6
    iget-object v2, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1520
    iget-object v3, p1, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 1521
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1523
    :cond_9
    iget-object v2, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/am;->b:Lio/realm/t;

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

    .line 1498
    iget-object v1, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 1499
    iget-object v2, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1500
    iget-object v3, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1503
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1504
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1505
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1506
    return v0

    :cond_1
    move v1, v0

    .line 1503
    goto :goto_0
.end method

.method public realmGet$alternativeApkPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 256
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$appAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 372
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 170
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$isDownloading()Z
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 361
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->p:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->g(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$mainObbMd5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 301
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 271
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$mainObbPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 286
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 200
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 140
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 226
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbMd5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 346
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 316
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$patchObbPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 331
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 185
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$storeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 241
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$verCode()I
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 215
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 155
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$alternativeApkPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 261
    if-nez p1, :cond_0

    .line 262
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$appAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 377
    if-nez p1, :cond_0

    .line 378
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->q:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->q:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 175
    if-nez p1, :cond_0

    .line 176
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$isDownloading(Z)V
    .locals 4

    .prologue
    .line 365
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 366
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->p:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JZ)V

    .line 367
    return-void
.end method

.method public realmSet$mainObbMd5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 306
    if-nez p1, :cond_0

    .line 307
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->l:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 276
    if-nez p1, :cond_0

    .line 277
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$mainObbPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 291
    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 296
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->k:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 205
    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 145
    if-nez p1, :cond_0

    .line 146
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 231
    if-nez p1, :cond_0

    .line 232
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->g:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbMd5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 351
    if-nez p1, :cond_0

    .line 352
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->o:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->o:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 321
    if-nez p1, :cond_0

    .line 322
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->m:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$patchObbPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 336
    if-nez p1, :cond_0

    .line 337
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->n:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 190
    if-nez p1, :cond_0

    .line 191
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$storeName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->h:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$verCode(I)V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 220
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->f:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 221
    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 160
    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lio/realm/am;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/am;->a:Lio/realm/am$a;

    iget-wide v2, v1, Lio/realm/am$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1416
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    const-string v0, "Invalid object"

    .line 1488
    :goto_0
    return-object v0

    .line 1419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Scheduled = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1420
    const-string v0, "{name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-virtual {p0}, Lio/realm/am;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/am;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    const-string v0, "{versionName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {p0}, Lio/realm/am;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/am;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    const-string v0, "{icon:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    invoke-virtual {p0}, Lio/realm/am;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/am;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    const-string v0, "{path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {p0}, Lio/realm/am;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/am;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    const-string v0, "{md5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {p0}, Lio/realm/am;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/am;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    const-string v0, "{verCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    invoke-virtual {p0}, Lio/realm/am;->realmGet$verCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1442
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    invoke-virtual {p0}, Lio/realm/am;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/realm/am;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    const-string v0, "{storeName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    invoke-virtual {p0}, Lio/realm/am;->realmGet$storeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/realm/am;->realmGet$storeName()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    const-string v0, "{alternativeApkPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-virtual {p0}, Lio/realm/am;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lio/realm/am;->realmGet$alternativeApkPath()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    const-string v0, "{mainObbName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0}, Lio/realm/am;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lio/realm/am;->realmGet$mainObbName()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    const-string v0, "{mainObbPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p0}, Lio/realm/am;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lio/realm/am;->realmGet$mainObbPath()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    const-string v0, "{mainObbMd5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {p0}, Lio/realm/am;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lio/realm/am;->realmGet$mainObbMd5()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    const-string v0, "{patchObbName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {p0}, Lio/realm/am;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lio/realm/am;->realmGet$patchObbName()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    const-string v0, "{patchObbPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {p0}, Lio/realm/am;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lio/realm/am;->realmGet$patchObbPath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v0, "{patchObbMd5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-virtual {p0}, Lio/realm/am;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lio/realm/am;->realmGet$patchObbMd5()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    const-string v0, "{isDownloading:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-virtual {p0}, Lio/realm/am;->realmGet$isDownloading()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1482
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    const-string v0, "{appAction:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-virtual {p0}, Lio/realm/am;->realmGet$appAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/realm/am;->realmGet$appAction()Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1421
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 1425
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 1429
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 1433
    :cond_4
    const-string v0, "null"

    goto/16 :goto_4

    .line 1437
    :cond_5
    const-string v0, "null"

    goto/16 :goto_5

    .line 1445
    :cond_6
    const-string v0, "null"

    goto/16 :goto_6

    .line 1449
    :cond_7
    const-string v0, "null"

    goto/16 :goto_7

    .line 1453
    :cond_8
    const-string v0, "null"

    goto/16 :goto_8

    .line 1457
    :cond_9
    const-string v0, "null"

    goto/16 :goto_9

    .line 1461
    :cond_a
    const-string v0, "null"

    goto/16 :goto_a

    .line 1465
    :cond_b
    const-string v0, "null"

    goto/16 :goto_b

    .line 1469
    :cond_c
    const-string v0, "null"

    goto/16 :goto_c

    .line 1473
    :cond_d
    const-string v0, "null"

    goto/16 :goto_d

    .line 1477
    :cond_e
    const-string v0, "null"

    goto :goto_e

    .line 1485
    :cond_f
    const-string v0, "null"

    goto :goto_f
.end method
