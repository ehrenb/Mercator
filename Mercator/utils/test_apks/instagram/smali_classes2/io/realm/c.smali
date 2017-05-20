.class public Lio/realm/c;
.super Lcm/aptoide/pt/database/realm/Download;
.source "DownloadRealmProxy.java"

# interfaces
.implements Lio/realm/d;
.implements Lio/realm/internal/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/c$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
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
.field private final a:Lio/realm/c$a;

.field private final b:Lio/realm/t;

.field private c:Lio/realm/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    const-string v1, "filesToDownload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "overallDownloadStatus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "overallProgress"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "md5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v1, "appName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v1, "Icon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v1, "timeStamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v1, "downloadSpeed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v1, "versionCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v1, "action"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "scheduled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "versionName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "downloadError"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/c;->d:Ljava/util/List;

    .line 116
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 119
    check-cast p1, Lio/realm/c$a;

    iput-object p1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    .line 120
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    .line 121
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 977
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

    .line 978
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1045
    :goto_0
    return-wide v4

    .line 980
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 981
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 982
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/c$a;

    .line 983
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 984
    check-cast v4, Lio/realm/d;

    invoke-interface {v4}, Lio/realm/d;->realmGet$md5()Ljava/lang/String;

    move-result-object v6

    .line 986
    if-nez v6, :cond_3

    .line 987
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    .line 991
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 992
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 993
    if-eqz v6, :cond_1

    .line 994
    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 997
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-wide v2, v8, Lio/realm/c$a;->a:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeGetLinkView(JJJ)J

    move-result-wide v6

    .line 1000
    invoke-static {v6, v7}, Lio/realm/internal/LinkView;->nativeClear(J)V

    move-object v2, p1

    .line 1001
    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v2

    .line 1002
    if-eqz v2, :cond_4

    .line 1003
    invoke-virtual {v2}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 1004
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1005
    if-nez v3, :cond_2

    .line 1006
    invoke-static {p0, v2, p2}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1008
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Lio/realm/internal/LinkView;->nativeAdd(JJ)V

    goto :goto_2

    .line 989
    :cond_3
    invoke-static {v0, v1, v2, v3, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 1011
    :cond_4
    invoke-static {v6, v7}, Lio/realm/internal/LinkView;->nativeClose(J)V

    .line 1013
    iget-wide v2, v8, Lio/realm/c$a;->b:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$overallDownloadStatus()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1014
    iget-wide v2, v8, Lio/realm/c$a;->c:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$overallProgress()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1015
    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$appName()Ljava/lang/String;

    move-result-object v6

    .line 1016
    if-eqz v6, :cond_5

    .line 1017
    iget-wide v2, v8, Lio/realm/c$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v2, p1

    .line 1021
    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$Icon()Ljava/lang/String;

    move-result-object v6

    .line 1022
    if-eqz v6, :cond_6

    .line 1023
    iget-wide v2, v8, Lio/realm/c$a;->f:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1027
    :goto_4
    iget-wide v2, v8, Lio/realm/c$a;->g:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$timeStamp()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1028
    iget-wide v2, v8, Lio/realm/c$a;->h:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$downloadSpeed()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 1029
    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 1030
    if-eqz v6, :cond_7

    .line 1031
    iget-wide v2, v8, Lio/realm/c$a;->i:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1035
    :goto_5
    iget-wide v2, v8, Lio/realm/c$a;->j:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$versionCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1036
    iget-wide v2, v8, Lio/realm/c$a;->k:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$action()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1037
    iget-wide v2, v8, Lio/realm/c$a;->l:J

    move-object v6, p1

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$scheduled()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    move-object v2, p1

    .line 1038
    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$versionName()Ljava/lang/String;

    move-result-object v6

    .line 1039
    if-eqz v6, :cond_8

    .line 1040
    iget-wide v2, v8, Lio/realm/c$a;->m:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1044
    :goto_6
    iget-wide v2, v8, Lio/realm/c$a;->n:J

    check-cast p1, Lio/realm/d;

    invoke-interface {p1}, Lio/realm/d;->realmGet$downloadError()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    goto/16 :goto_0

    .line 1019
    :cond_5
    iget-wide v2, v8, Lio/realm/c$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 1025
    :cond_6
    iget-wide v2, v8, Lio/realm/c$a;->f:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 1033
    :cond_7
    iget-wide v2, v8, Lio/realm/c$a;->i:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 1042
    :cond_8
    iget-wide v2, v8, Lio/realm/c$a;->m:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_6
.end method

.method public static a(Lcm/aptoide/pt/database/realm/Download;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Download;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Download;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/Download;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1127
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move-object v0, v2

    .line 1172
    :goto_0
    return-object v0

    .line 1130
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 1132
    if-eqz v0, :cond_4

    .line 1134
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 1135
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/Download;

    .line 1138
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    .line 1146
    :goto_1
    if-ne p1, p2, :cond_5

    move-object v0, v1

    .line 1147
    check-cast v0, Lio/realm/d;

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$filesToDownload(Lio/realm/aa;)V

    :cond_3
    move-object v0, v1

    .line 1159
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$overallDownloadStatus()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$overallDownloadStatus(I)V

    move-object v0, v1

    .line 1160
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$overallProgress()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$overallProgress(I)V

    move-object v0, v1

    .line 1161
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, v1

    .line 1162
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$appName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$appName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1163
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$Icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$Icon(Ljava/lang/String;)V

    move-object v0, v1

    .line 1164
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$timeStamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/d;->realmSet$timeStamp(J)V

    move-object v0, v1

    .line 1165
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$downloadSpeed()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$downloadSpeed(I)V

    move-object v0, v1

    .line 1166
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1167
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$versionCode(I)V

    move-object v0, v1

    .line 1168
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$action()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$action(I)V

    move-object v0, v1

    .line 1169
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$scheduled()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$scheduled(Z)V

    move-object v0, v1

    .line 1170
    check-cast v0, Lio/realm/d;

    move-object v2, p0

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1171
    check-cast v0, Lio/realm/d;

    check-cast p0, Lio/realm/d;

    invoke-interface {p0}, Lio/realm/d;->realmGet$downloadError()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/d;->realmSet$downloadError(I)V

    move-object v0, v1

    .line 1172
    goto/16 :goto_0

    .line 1141
    :cond_4
    new-instance v1, Lcm/aptoide/pt/database/realm/Download;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/Download;-><init>()V

    .line 1142
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    move-object v0, p0

    .line 1149
    check-cast v0, Lio/realm/d;

    invoke-interface {v0}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v3

    .line 1150
    new-instance v4, Lio/realm/aa;

    invoke-direct {v4}, Lio/realm/aa;-><init>()V

    move-object v0, v1

    .line 1151
    check-cast v0, Lio/realm/d;

    invoke-interface {v0, v4}, Lio/realm/d;->realmSet$filesToDownload(Lio/realm/aa;)V

    .line 1152
    add-int/lit8 v5, p1, 0x1

    .line 1153
    invoke-virtual {v3}, Lio/realm/aa;->size()I

    move-result v6

    .line 1154
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_3

    .line 1155
    invoke-virtual {v3, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {v0, v5, p2, p3}, Lio/realm/j;->a(Lcm/aptoide/pt/database/realm/FileToDownload;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v0

    .line 1156
    invoke-virtual {v4, v0}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    .line 1154
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Download;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Download;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Download;"
        }
    .end annotation

    .prologue
    .line 1176
    move-object v0, p2

    check-cast v0, Lio/realm/d;

    invoke-interface {v0}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v2

    move-object v0, p1

    .line 1177
    check-cast v0, Lio/realm/d;

    invoke-interface {v0}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v3

    .line 1178
    invoke-virtual {v3}, Lio/realm/aa;->clear()V

    .line 1179
    if-eqz v2, :cond_1

    .line 1180
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lio/realm/aa;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1181
    invoke-virtual {v2, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 1182
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 1183
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v3, v0}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    .line 1180
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1186
    :cond_0
    invoke-virtual {v2, v1}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    const/4 v4, 0x1

    invoke-static {p0, v0, v4, p3}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 1190
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$overallDownloadStatus()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$overallDownloadStatus(I)V

    move-object v0, p1

    .line 1191
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$overallProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$overallProgress(I)V

    move-object v0, p1

    .line 1192
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$appName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$appName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1193
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$Icon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$Icon(Ljava/lang/String;)V

    move-object v0, p1

    .line 1194
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$timeStamp()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/realm/d;->realmSet$timeStamp(J)V

    move-object v0, p1

    .line 1195
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$downloadSpeed()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$downloadSpeed(I)V

    move-object v0, p1

    .line 1196
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$packageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1197
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$versionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$versionCode(I)V

    move-object v0, p1

    .line 1198
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$action()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$action(I)V

    move-object v0, p1

    .line 1199
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$scheduled()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$scheduled(Z)V

    move-object v0, p1

    .line 1200
    check-cast v0, Lio/realm/d;

    move-object v1, p2

    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$versionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1201
    check-cast v0, Lio/realm/d;

    check-cast p2, Lio/realm/d;

    invoke-interface {p2}, Lio/realm/d;->realmGet$downloadError()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/d;->realmSet$downloadError(I)V

    .line 1202
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Download;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Download;"
        }
    .end annotation

    .prologue
    .line 761
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

    .line 762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 764
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

    .line 796
    :goto_0
    return-object p1

    .line 767
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 768
    if-eqz v0, :cond_2

    .line 769
    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    move-object p1, v0

    goto :goto_0

    .line 771
    :cond_2
    const/4 v1, 0x0

    .line 773
    if-eqz p2, :cond_6

    .line 774
    const-class v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v4

    .line 775
    invoke-virtual {v4}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v0, p1

    .line 776
    check-cast v0, Lio/realm/d;

    invoke-interface {v0}, Lio/realm/d;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    .line 778
    if-nez v0, :cond_3

    .line 779
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v2

    .line 783
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 784
    new-instance v1, Lio/realm/c;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v5, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0, v5}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/c;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 785
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 786
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 787
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 793
    :goto_2
    if-eqz v0, :cond_5

    .line 794
    invoke-static {p0, v1, p1, p3}, Lio/realm/c;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;Lcm/aptoide/pt/database/realm/Download;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object p1

    goto :goto_0

    .line 781
    :cond_3
    invoke-virtual {v4, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 789
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 796
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/c;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Download;

    move-result-object p1

    goto :goto_0

    :cond_6
    move v0, p2

    goto :goto_2
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 317
    const-string v0, "class_Download"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    const-string v0, "class_Download"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 319
    const-string v1, "class_FileToDownload"

    invoke-virtual {p0, v1}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-static {p0}, Lio/realm/j;->a(Lio/realm/internal/e;)Lio/realm/internal/Table;

    .line 322
    :cond_0
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    const-string v2, "filesToDownload"

    const-string v3, "class_FileToDownload"

    invoke-virtual {p0, v3}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Lio/realm/internal/Table;)J

    .line 323
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "overallDownloadStatus"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 324
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "overallProgress"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 325
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 326
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "appName"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 327
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "Icon"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 328
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "timeStamp"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 329
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "downloadSpeed"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 330
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 331
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 332
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "action"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 333
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "scheduled"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 334
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2, v5}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 335
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "downloadError"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 336
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 337
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 340
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "class_Download"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const-string v0, "class_Download"

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
    .line 1049
    const-class v2, Lcm/aptoide/pt/database/realm/Download;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 1050
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 1051
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/c$a;

    .line 1052
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 1054
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1055
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/Download;

    .line 1056
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1057
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

    .line 1058
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

    .line 1061
    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$md5()Ljava/lang/String;

    move-result-object v8

    .line 1063
    if-nez v8, :cond_4

    .line 1064
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    .line 1068
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 1069
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 1070
    if-eqz v8, :cond_2

    .line 1071
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :cond_2
    move-wide v10, v6

    .line 1074
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    iget-wide v8, v14, Lio/realm/c$a;->a:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeGetLinkView(JJJ)J

    move-result-wide v8

    .line 1077
    invoke-static {v8, v9}, Lio/realm/internal/LinkView;->nativeClear(J)V

    move-object v6, v15

    .line 1078
    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v6

    .line 1079
    if-eqz v6, :cond_5

    .line 1080
    invoke-virtual {v6}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 1081
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1082
    if-nez v7, :cond_3

    .line 1083
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1085
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Lio/realm/internal/LinkView;->nativeAdd(JJ)V

    goto :goto_2

    .line 1066
    :cond_4
    invoke-static {v2, v3, v4, v5, v8}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto :goto_1

    .line 1088
    :cond_5
    invoke-static {v8, v9}, Lio/realm/internal/LinkView;->nativeClose(J)V

    .line 1090
    iget-wide v8, v14, Lio/realm/c$a;->b:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$overallDownloadStatus()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1091
    iget-wide v8, v14, Lio/realm/c$a;->c:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$overallProgress()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1092
    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$appName()Ljava/lang/String;

    move-result-object v12

    .line 1093
    if-eqz v12, :cond_6

    .line 1094
    iget-wide v8, v14, Lio/realm/c$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v6, v15

    .line 1098
    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$Icon()Ljava/lang/String;

    move-result-object v12

    .line 1099
    if-eqz v12, :cond_7

    .line 1100
    iget-wide v8, v14, Lio/realm/c$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1104
    :goto_4
    iget-wide v8, v14, Lio/realm/c$a;->g:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$timeStamp()J

    move-result-wide v12

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1105
    iget-wide v8, v14, Lio/realm/c$a;->h:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$downloadSpeed()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 1106
    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$packageName()Ljava/lang/String;

    move-result-object v12

    .line 1107
    if-eqz v12, :cond_8

    .line 1108
    iget-wide v8, v14, Lio/realm/c$a;->i:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1112
    :goto_5
    iget-wide v8, v14, Lio/realm/c$a;->j:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$versionCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1113
    iget-wide v8, v14, Lio/realm/c$a;->k:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$action()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 1114
    iget-wide v8, v14, Lio/realm/c$a;->l:J

    move-object v6, v15

    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$scheduled()Z

    move-result v12

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    move-object v6, v15

    .line 1115
    check-cast v6, Lio/realm/d;

    invoke-interface {v6}, Lio/realm/d;->realmGet$versionName()Ljava/lang/String;

    move-result-object v12

    .line 1116
    if-eqz v12, :cond_9

    .line 1117
    iget-wide v8, v14, Lio/realm/c$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 1121
    :goto_6
    iget-wide v8, v14, Lio/realm/c$a;->n:J

    check-cast v15, Lio/realm/d;

    invoke-interface {v15}, Lio/realm/d;->realmGet$downloadError()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    goto/16 :goto_0

    .line 1096
    :cond_6
    iget-wide v8, v14, Lio/realm/c$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 1102
    :cond_7
    iget-wide v8, v14, Lio/realm/c$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 1110
    :cond_8
    iget-wide v8, v14, Lio/realm/c$a;->i:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 1119
    :cond_9
    iget-wide v8, v14, Lio/realm/c$a;->m:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_6

    .line 1124
    :cond_a
    return-void
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Download;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Download;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Download;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Download;"
        }
    .end annotation

    .prologue
    .line 802
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 803
    if-eqz v0, :cond_0

    .line 804
    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    .line 836
    :goto_0
    return-object v0

    .line 806
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/Download;

    move-object v0, p1

    check-cast v0, Lio/realm/d;

    invoke-interface {v0}, Lio/realm/d;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    move-object v1, v0

    .line 807
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    .line 809
    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v3

    .line 810
    if-eqz v3, :cond_2

    move-object v1, v0

    .line 811
    check-cast v1, Lio/realm/d;

    invoke-interface {v1}, Lio/realm/d;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v4

    .line 812
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v3}, Lio/realm/aa;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 813
    invoke-virtual {v3, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 814
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 815
    if-eqz v1, :cond_1

    .line 816
    invoke-virtual {v4, v1}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    .line 812
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 818
    :cond_1
    invoke-virtual {v3, v2}, Lio/realm/aa;->b(I)Lio/realm/ac;

    move-result-object v1

    check-cast v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-static {p0, v1, p2, p3}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/realm/aa;->a(Lio/realm/ac;)Z

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 823
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$overallDownloadStatus()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$overallDownloadStatus(I)V

    move-object v1, v0

    .line 824
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$overallProgress()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$overallProgress(I)V

    move-object v1, v0

    .line 825
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$md5(Ljava/lang/String;)V

    move-object v1, v0

    .line 826
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$appName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$appName(Ljava/lang/String;)V

    move-object v1, v0

    .line 827
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$Icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$Icon(Ljava/lang/String;)V

    move-object v1, v0

    .line 828
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$timeStamp()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lio/realm/d;->realmSet$timeStamp(J)V

    move-object v1, v0

    .line 829
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$downloadSpeed()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$downloadSpeed(I)V

    move-object v1, v0

    .line 830
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 831
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$versionCode(I)V

    move-object v1, v0

    .line 832
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$action()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$action(I)V

    move-object v1, v0

    .line 833
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$scheduled()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$scheduled(Z)V

    move-object v1, v0

    .line 834
    check-cast v1, Lio/realm/d;

    move-object v2, p1

    check-cast v2, Lio/realm/d;

    invoke-interface {v2}, Lio/realm/d;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$versionName(Ljava/lang/String;)V

    move-object v1, v0

    .line 835
    check-cast v1, Lio/realm/d;

    check-cast p1, Lio/realm/d;

    invoke-interface {p1}, Lio/realm/d;->realmGet$downloadError()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/d;->realmSet$downloadError(I)V

    goto/16 :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/c$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0xe

    .line 344
    const-string v0, "class_Download"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 345
    const-string v0, "class_Download"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 14 but was "

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

    .line 349
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 350
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 351
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 354
    :cond_1
    new-instance v0, Lio/realm/c$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/c$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 356
    const-string v1, "filesToDownload"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 357
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'filesToDownload\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_2
    const-string v1, "filesToDownload"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 360
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'FileToDownload\' for field \'filesToDownload\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_3
    const-string v1, "class_FileToDownload"

    invoke-virtual {p0, v1}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 363
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing class \'class_FileToDownload\' for field \'filesToDownload\'"

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_4
    const-string v1, "class_FileToDownload"

    invoke-virtual {p0, v1}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    .line 366
    iget-wide v4, v0, Lio/realm/c$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->i(J)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v4, v1}, Lio/realm/internal/Table;->a(Lio/realm/internal/Table;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 367
    new-instance v3, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid RealmList type for field \'filesToDownload\': \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lio/realm/c$a;->a:J

    invoke-virtual {v2, v6, v7}, Lio/realm/internal/Table;->i(J)Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' expected - was \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 369
    :cond_5
    const-string v1, "overallDownloadStatus"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 370
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'overallDownloadStatus\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_6
    const-string v1, "overallDownloadStatus"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_7

    .line 373
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'overallDownloadStatus\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_7
    iget-wide v4, v0, Lio/realm/c$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 376
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'overallDownloadStatus\' does support null values in the existing Realm file. Use corresponding boxed type for field \'overallDownloadStatus\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_8
    const-string v1, "overallProgress"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 379
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'overallProgress\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_9
    const-string v1, "overallProgress"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_a

    .line 382
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'overallProgress\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_a
    iget-wide v4, v0, Lio/realm/c$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 385
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'overallProgress\' does support null values in the existing Realm file. Use corresponding boxed type for field \'overallProgress\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_b
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 388
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'md5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_c
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_d

    .line 391
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'md5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_d
    iget-wide v4, v0, Lio/realm/c$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_e

    .line 394
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@PrimaryKey field \'md5\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_e
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "md5"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_f

    .line 397
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'md5\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_f
    const-string v1, "md5"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 400
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'md5\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_10
    const-string v1, "appName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 403
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'appName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_11
    const-string v1, "appName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_12

    .line 406
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'appName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_12
    iget-wide v4, v0, Lio/realm/c$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 409
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'appName\' is required. Either set @Required to field \'appName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_13
    const-string v1, "Icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 412
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'Icon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_14
    const-string v1, "Icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_15

    .line 415
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'Icon\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_15
    iget-wide v4, v0, Lio/realm/c$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_16

    .line 418
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'Icon\' is required. Either set @Required to field \'Icon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_16
    const-string v1, "timeStamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 421
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'timeStamp\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_17
    const-string v1, "timeStamp"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_18

    .line 424
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'long\' for field \'timeStamp\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_18
    iget-wide v4, v0, Lio/realm/c$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 427
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'timeStamp\' does support null values in the existing Realm file. Use corresponding boxed type for field \'timeStamp\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_19
    const-string v1, "downloadSpeed"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 430
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'downloadSpeed\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1a
    const-string v1, "downloadSpeed"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1b

    .line 433
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'downloadSpeed\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1b
    iget-wide v4, v0, Lio/realm/c$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 436
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'downloadSpeed\' does support null values in the existing Realm file. Use corresponding boxed type for field \'downloadSpeed\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_1c
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 439
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_1d
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1e

    .line 442
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1e
    iget-wide v4, v0, Lio/realm/c$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 445
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'packageName\' is required. Either set @Required to field \'packageName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1f
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 448
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_20
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_21

    .line 451
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'versionCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_21
    iget-wide v4, v0, Lio/realm/c$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 454
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'versionCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_22
    const-string v1, "action"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 457
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'action\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_23
    const-string v1, "action"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_24

    .line 460
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'action\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_24
    iget-wide v4, v0, Lio/realm/c$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 463
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'action\' does support null values in the existing Realm file. Use corresponding boxed type for field \'action\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_25
    const-string v1, "scheduled"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 466
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'scheduled\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_26
    const-string v1, "scheduled"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_27

    .line 469
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'scheduled\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_27
    iget-wide v4, v0, Lio/realm/c$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 472
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'scheduled\' does support null values in the existing Realm file. Use corresponding boxed type for field \'scheduled\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_28
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 475
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_29
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_2a

    .line 478
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'versionName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_2a
    iget-wide v4, v0, Lio/realm/c$a;->m:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 481
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionName\' is required. Either set @Required to field \'versionName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_2b
    const-string v1, "downloadError"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 484
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'downloadError\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_2c
    const-string v1, "downloadError"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_2d

    .line 487
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'downloadError\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_2d
    iget-wide v4, v0, Lio/realm/c$a;->n:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 490
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'downloadError\' does support null values in the existing Realm file. Use corresponding boxed type for field \'downloadError\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_2e
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Download\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_2f
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1290
    if-ne p0, p1, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1291
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

    .line 1292
    :cond_3
    check-cast p1, Lio/realm/c;

    .line 1294
    iget-object v2, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 1295
    iget-object v3, p1, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 1296
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1298
    :cond_6
    iget-object v2, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1299
    iget-object v3, p1, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 1300
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1302
    :cond_9
    iget-object v2, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/c;->b:Lio/realm/t;

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

    .line 1277
    iget-object v1, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 1278
    iget-object v2, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1279
    iget-object v3, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1282
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1283
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1284
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1285
    return v0

    :cond_1
    move v1, v0

    .line 1282
    goto :goto_0
.end method

.method public realmGet$Icon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 208
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$action()I
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 271
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$appName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 193
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$downloadError()I
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 308
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->n:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$downloadSpeed()I
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 234
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$filesToDownload()Lio/realm/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 126
    iget-object v0, p0, Lio/realm/c;->c:Lio/realm/aa;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lio/realm/c;->c:Lio/realm/aa;

    .line 131
    :goto_0
    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->m(J)Lio/realm/internal/LinkView;

    move-result-object v0

    .line 130
    new-instance v1, Lio/realm/aa;

    const-class v2, Lcm/aptoide/pt/database/realm/FileToDownload;

    iget-object v3, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lio/realm/aa;-><init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/a;)V

    iput-object v1, p0, Lio/realm/c;->c:Lio/realm/aa;

    .line 131
    iget-object v0, p0, Lio/realm/c;->c:Lio/realm/aa;

    goto :goto_0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 178
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$overallDownloadStatus()I
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 156
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$overallProgress()I
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 167
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 245
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$scheduled()Z
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 282
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->g(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$timeStamp()J
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 223
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public realmGet$versionCode()I
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 260
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 293
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$Icon(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 213
    if-nez p1, :cond_0

    .line 214
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->f:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$action(I)V
    .locals 6

    .prologue
    .line 275
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 276
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->k:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 277
    return-void
.end method

.method public realmSet$appName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 198
    if-nez p1, :cond_0

    .line 199
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$downloadError(I)V
    .locals 6

    .prologue
    .line 312
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 313
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->n:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 314
    return-void
.end method

.method public realmSet$downloadSpeed(I)V
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 239
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->h:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 240
    return-void
.end method

.method public realmSet$filesToDownload(Lio/realm/aa;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/aa",
            "<",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 137
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->m(J)Lio/realm/internal/LinkView;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lio/realm/internal/LinkView;->a()V

    .line 139
    if-nez p1, :cond_1

    .line 151
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Lio/realm/aa;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/ac;

    .line 143
    invoke-static {v0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must be a valid managed object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v1, v0

    .line 146
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {v1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    iget-object v4, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v4}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v4

    if-eq v1, v4, :cond_3

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of \'value\' must belong to the same Realm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_3
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/LinkView;->b(J)V

    goto :goto_0
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 183
    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$overallDownloadStatus(I)V
    .locals 6

    .prologue
    .line 160
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 161
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->b:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 162
    return-void
.end method

.method public realmSet$overallProgress(I)V
    .locals 6

    .prologue
    .line 171
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 172
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->c:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 173
    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 250
    if-nez p1, :cond_0

    .line 251
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$scheduled(Z)V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 287
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->l:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JZ)V

    .line 288
    return-void
.end method

.method public realmSet$timeStamp(J)V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 228
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->g:J

    invoke-interface {v0, v2, v3, p1, p2}, Lio/realm/internal/l;->a(JJ)V

    .line 229
    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 6

    .prologue
    .line 264
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 265
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->j:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 266
    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 298
    if-nez p1, :cond_0

    .line 299
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->m:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lio/realm/c;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/c;->a:Lio/realm/c$a;

    iget-wide v2, v1, Lio/realm/c$a;->m:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1207
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    const-string v0, "Invalid object"

    .line 1267
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Download = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1211
    const-string v0, "{filesToDownload:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    const-string v0, "RealmList<FileToDownload>["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/c;->realmGet$filesToDownload()Lio/realm/aa;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/aa;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    const-string v0, "{overallDownloadStatus:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    invoke-virtual {p0}, Lio/realm/c;->realmGet$overallDownloadStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1217
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const-string v0, "{overallProgress:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    invoke-virtual {p0}, Lio/realm/c;->realmGet$overallProgress()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v0, "{md5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {p0}, Lio/realm/c;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/c;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v0, "{appName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {p0}, Lio/realm/c;->realmGet$appName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/c;->realmGet$appName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    const-string v0, "{Icon:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {p0}, Lio/realm/c;->realmGet$Icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/c;->realmGet$Icon()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string v0, "{timeStamp:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p0}, Lio/realm/c;->realmGet$timeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1237
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string v0, "{downloadSpeed:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {p0}, Lio/realm/c;->realmGet$downloadSpeed()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1241
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {p0}, Lio/realm/c;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/c;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v0, "{versionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-virtual {p0}, Lio/realm/c;->realmGet$versionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1249
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string v0, "{action:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {p0}, Lio/realm/c;->realmGet$action()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1253
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string v0, "{scheduled:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {p0}, Lio/realm/c;->realmGet$scheduled()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1257
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    const-string v0, "{versionName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {p0}, Lio/realm/c;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/c;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-string v0, "{downloadError:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {p0}, Lio/realm/c;->realmGet$downloadError()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1265
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1224
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 1228
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 1232
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 1244
    :cond_4
    const-string v0, "null"

    goto/16 :goto_4

    .line 1260
    :cond_5
    const-string v0, "null"

    goto :goto_5
.end method
