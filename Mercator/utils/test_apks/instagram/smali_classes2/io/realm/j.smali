.class public Lio/realm/j;
.super Lcm/aptoide/pt/database/realm/FileToDownload;
.source "FileToDownloadRealmProxy.java"

# interfaces
.implements Lio/realm/internal/j;
.implements Lio/realm/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/j$a;
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
.field private final a:Lio/realm/j$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const-string v1, "md5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "downloadId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "altLink"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "link"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "fileType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "progress"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "fileName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "versionCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "versionName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/j;->c:Ljava/util/List;

    .line 105
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/FileToDownload;-><init>()V

    .line 108
    check-cast p1, Lio/realm/j$a;

    iput-object p1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    .line 109
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    .line 110
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 834
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

    .line 835
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 896
    :goto_0
    return-wide v4

    .line 837
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 838
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 839
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/j$a;

    .line 840
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 841
    check-cast v4, Lio/realm/k;

    invoke-interface {v4}, Lio/realm/k;->realmGet$md5()Ljava/lang/String;

    move-result-object v6

    .line 843
    if-nez v6, :cond_2

    .line 844
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    .line 848
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 849
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 850
    if-eqz v6, :cond_1

    .line 851
    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 854
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-wide v2, v8, Lio/realm/j$a;->b:J

    move-object v6, p1

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$downloadId()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 856
    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$altLink()Ljava/lang/String;

    move-result-object v6

    .line 857
    if-eqz v6, :cond_3

    .line 858
    iget-wide v2, v8, Lio/realm/j$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 862
    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$link()Ljava/lang/String;

    move-result-object v6

    .line 863
    if-eqz v6, :cond_4

    .line 864
    iget-wide v2, v8, Lio/realm/j$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v2, p1

    .line 868
    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 869
    if-eqz v6, :cond_5

    .line 870
    iget-wide v2, v8, Lio/realm/j$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, p1

    .line 874
    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$path()Ljava/lang/String;

    move-result-object v6

    .line 875
    if-eqz v6, :cond_6

    .line 876
    iget-wide v2, v8, Lio/realm/j$a;->f:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 880
    :goto_5
    iget-wide v2, v8, Lio/realm/j$a;->g:J

    move-object v6, p1

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$fileType()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 881
    iget-wide v2, v8, Lio/realm/j$a;->h:J

    move-object v6, p1

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$progress()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 882
    iget-wide v2, v8, Lio/realm/j$a;->i:J

    move-object v6, p1

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$status()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 883
    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$fileName()Ljava/lang/String;

    move-result-object v6

    .line 884
    if-eqz v6, :cond_7

    .line 885
    iget-wide v2, v8, Lio/realm/j$a;->j:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 889
    :goto_6
    iget-wide v2, v8, Lio/realm/j$a;->k:J

    move-object v6, p1

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$versionCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 890
    check-cast p1, Lio/realm/k;

    invoke-interface {p1}, Lio/realm/k;->realmGet$versionName()Ljava/lang/String;

    move-result-object v6

    .line 891
    if-eqz v6, :cond_8

    .line 892
    iget-wide v2, v8, Lio/realm/j$a;->l:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_2
    invoke-static {v0, v1, v2, v3, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_1

    .line 860
    :cond_3
    iget-wide v2, v8, Lio/realm/j$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 866
    :cond_4
    iget-wide v2, v8, Lio/realm/j$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 872
    :cond_5
    iget-wide v2, v8, Lio/realm/j$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 878
    :cond_6
    iget-wide v2, v8, Lio/realm/j$a;->f:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 887
    :cond_7
    iget-wide v2, v8, Lio/realm/j$a;->j:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_6

    .line 894
    :cond_8
    iget-wide v2, v8, Lio/realm/j$a;->l:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0
.end method

.method public static a(Lcm/aptoide/pt/database/realm/FileToDownload;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/FileToDownload;"
        }
    .end annotation

    .prologue
    .line 972
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 973
    :cond_0
    const/4 v0, 0x0

    .line 1001
    :goto_0
    return-object v0

    .line 975
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 977
    if-eqz v0, :cond_3

    .line 979
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 980
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    goto :goto_0

    .line 982
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 983
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 989
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$md5(Ljava/lang/String;)V

    move-object v0, v1

    .line 990
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$downloadId()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$downloadId(I)V

    move-object v0, v1

    .line 991
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$altLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$altLink(Ljava/lang/String;)V

    move-object v0, v1

    .line 992
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$link()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$link(Ljava/lang/String;)V

    move-object v0, v1

    .line 993
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 994
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$path(Ljava/lang/String;)V

    move-object v0, v1

    .line 995
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$fileType()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$fileType(I)V

    move-object v0, v1

    .line 996
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$progress()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$progress(I)V

    move-object v0, v1

    .line 997
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$status()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$status(I)V

    move-object v0, v1

    .line 998
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$fileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$fileName(Ljava/lang/String;)V

    move-object v0, v1

    .line 999
    check-cast v0, Lio/realm/k;

    move-object v2, p0

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$versionCode(I)V

    move-object v0, v1

    .line 1000
    check-cast v0, Lio/realm/k;

    check-cast p0, Lio/realm/k;

    invoke-interface {p0}, Lio/realm/k;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/k;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 1001
    goto/16 :goto_0

    .line 986
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/FileToDownload;-><init>()V

    .line 987
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/FileToDownload;"
        }
    .end annotation

    .prologue
    .line 1005
    move-object v0, p1

    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$downloadId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$downloadId(I)V

    move-object v0, p1

    .line 1006
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$altLink()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$altLink(Ljava/lang/String;)V

    move-object v0, p1

    .line 1007
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$link()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$link(Ljava/lang/String;)V

    move-object v0, p1

    .line 1008
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$packageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1009
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$path(Ljava/lang/String;)V

    move-object v0, p1

    .line 1010
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$fileType()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$fileType(I)V

    move-object v0, p1

    .line 1011
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$progress()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$progress(I)V

    move-object v0, p1

    .line 1012
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$status()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$status(I)V

    move-object v0, p1

    .line 1013
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$fileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$fileName(Ljava/lang/String;)V

    move-object v0, p1

    .line 1014
    check-cast v0, Lio/realm/k;

    move-object v1, p2

    check-cast v1, Lio/realm/k;

    invoke-interface {v1}, Lio/realm/k;->realmGet$versionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$versionCode(I)V

    move-object v0, p1

    .line 1015
    check-cast v0, Lio/realm/k;

    check-cast p2, Lio/realm/k;

    invoke-interface {p2}, Lio/realm/k;->realmGet$versionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/k;->realmSet$versionName(Ljava/lang/String;)V

    .line 1016
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/FileToDownload;"
        }
    .end annotation

    .prologue
    .line 652
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

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
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

    .line 687
    :goto_0
    return-object p1

    .line 658
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 659
    if-eqz v0, :cond_2

    .line 660
    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    move-object p1, v0

    goto :goto_0

    .line 662
    :cond_2
    const/4 v1, 0x0

    .line 664
    if-eqz p2, :cond_6

    .line 665
    const-class v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v4

    .line 666
    invoke-virtual {v4}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v0, p1

    .line 667
    check-cast v0, Lio/realm/k;

    invoke-interface {v0}, Lio/realm/k;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    .line 669
    if-nez v0, :cond_3

    .line 670
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v2

    .line 674
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 675
    new-instance v1, Lio/realm/j;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v5, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v0, v5}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/j;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 676
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 677
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 678
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 684
    :goto_2
    if-eqz v0, :cond_5

    .line 685
    invoke-static {p0, v1, p1, p3}, Lio/realm/j;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;Lcm/aptoide/pt/database/realm/FileToDownload;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

    move-result-object p1

    goto :goto_0

    .line 672
    :cond_3
    invoke-virtual {v4, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 680
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 687
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/j;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;

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

    .line 273
    const-string v0, "class_FileToDownload"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "class_FileToDownload"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 275
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 276
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "downloadId"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 277
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "altLink"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 278
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "link"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 279
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 280
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "path"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 281
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "fileType"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 282
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "progress"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 283
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "status"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 284
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "fileName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 285
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 286
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 287
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 288
    const-string v1, "md5"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_FileToDownload"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "class_FileToDownload"

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
    .line 900
    const-class v2, Lcm/aptoide/pt/database/realm/FileToDownload;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 901
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/FileToDownload;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/j$a;

    .line 903
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 905
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 906
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 907
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 908
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

    .line 909
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

    .line 912
    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$md5()Ljava/lang/String;

    move-result-object v8

    .line 914
    if-nez v8, :cond_3

    .line 915
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    .line 919
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 920
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 921
    if-eqz v8, :cond_2

    .line 922
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :cond_2
    move-wide v10, v6

    .line 925
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-wide v8, v14, Lio/realm/j$a;->b:J

    move-object v6, v15

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$downloadId()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 927
    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$altLink()Ljava/lang/String;

    move-result-object v12

    .line 928
    if-eqz v12, :cond_4

    .line 929
    iget-wide v8, v14, Lio/realm/j$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v6, v15

    .line 933
    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$link()Ljava/lang/String;

    move-result-object v12

    .line 934
    if-eqz v12, :cond_5

    .line 935
    iget-wide v8, v14, Lio/realm/j$a;->d:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_3
    move-object v6, v15

    .line 939
    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$packageName()Ljava/lang/String;

    move-result-object v12

    .line 940
    if-eqz v12, :cond_6

    .line 941
    iget-wide v8, v14, Lio/realm/j$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v6, v15

    .line 945
    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$path()Ljava/lang/String;

    move-result-object v12

    .line 946
    if-eqz v12, :cond_7

    .line 947
    iget-wide v8, v14, Lio/realm/j$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 951
    :goto_5
    iget-wide v8, v14, Lio/realm/j$a;->g:J

    move-object v6, v15

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$fileType()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 952
    iget-wide v8, v14, Lio/realm/j$a;->h:J

    move-object v6, v15

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$progress()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 953
    iget-wide v8, v14, Lio/realm/j$a;->i:J

    move-object v6, v15

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$status()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 954
    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$fileName()Ljava/lang/String;

    move-result-object v12

    .line 955
    if-eqz v12, :cond_8

    .line 956
    iget-wide v8, v14, Lio/realm/j$a;->j:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 960
    :goto_6
    iget-wide v8, v14, Lio/realm/j$a;->k:J

    move-object v6, v15

    check-cast v6, Lio/realm/k;

    invoke-interface {v6}, Lio/realm/k;->realmGet$versionCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    .line 961
    check-cast v15, Lio/realm/k;

    invoke-interface {v15}, Lio/realm/k;->realmGet$versionName()Ljava/lang/String;

    move-result-object v12

    .line 962
    if-eqz v12, :cond_9

    .line 963
    iget-wide v8, v14, Lio/realm/j$a;->l:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 917
    :cond_3
    invoke-static {v2, v3, v4, v5, v8}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 931
    :cond_4
    iget-wide v8, v14, Lio/realm/j$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 937
    :cond_5
    iget-wide v8, v14, Lio/realm/j$a;->d:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 943
    :cond_6
    iget-wide v8, v14, Lio/realm/j$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 949
    :cond_7
    iget-wide v8, v14, Lio/realm/j$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 958
    :cond_8
    iget-wide v8, v14, Lio/realm/j$a;->j:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_6

    .line 965
    :cond_9
    iget-wide v8, v14, Lio/realm/j$a;->l:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 969
    :cond_a
    return-void
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/FileToDownload;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/FileToDownload;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/FileToDownload;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/FileToDownload;"
        }
    .end annotation

    .prologue
    .line 693
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 694
    if-eqz v0, :cond_0

    .line 695
    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    .line 711
    :goto_0
    return-object v0

    .line 697
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/FileToDownload;

    move-object v0, p1

    check-cast v0, Lio/realm/k;

    invoke-interface {v0}, Lio/realm/k;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/FileToDownload;

    move-object v1, v0

    .line 698
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 699
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$md5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$md5(Ljava/lang/String;)V

    move-object v1, v0

    .line 700
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$downloadId()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$downloadId(I)V

    move-object v1, v0

    .line 701
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$altLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$altLink(Ljava/lang/String;)V

    move-object v1, v0

    .line 702
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$link()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$link(Ljava/lang/String;)V

    move-object v1, v0

    .line 703
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 704
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$path()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$path(Ljava/lang/String;)V

    move-object v1, v0

    .line 705
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$fileType()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$fileType(I)V

    move-object v1, v0

    .line 706
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$progress()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$progress(I)V

    move-object v1, v0

    .line 707
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$status()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$status(I)V

    move-object v1, v0

    .line 708
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$fileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$fileName(Ljava/lang/String;)V

    move-object v1, v0

    .line 709
    check-cast v1, Lio/realm/k;

    move-object v2, p1

    check-cast v2, Lio/realm/k;

    invoke-interface {v2}, Lio/realm/k;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$versionCode(I)V

    move-object v1, v0

    .line 710
    check-cast v1, Lio/realm/k;

    check-cast p1, Lio/realm/k;

    invoke-interface {p1}, Lio/realm/k;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/k;->realmSet$versionName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/j$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0xc

    .line 295
    const-string v0, "class_FileToDownload"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 296
    const-string v0, "class_FileToDownload"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 12 but was "

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

    .line 300
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 301
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 302
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Lio/realm/j$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/j$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 307
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'md5\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    const-string v1, "md5"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 311
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'md5\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_3
    iget-wide v4, v0, Lio/realm/j$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 314
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@PrimaryKey field \'md5\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_4
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "md5"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 317
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'md5\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_5
    const-string v1, "md5"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 320
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'md5\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_6
    const-string v1, "downloadId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 323
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'downloadId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_7
    const-string v1, "downloadId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_8

    .line 326
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'downloadId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_8
    iget-wide v4, v0, Lio/realm/j$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 329
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'downloadId\' does support null values in the existing Realm file. Use corresponding boxed type for field \'downloadId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_9
    const-string v1, "altLink"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 332
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'altLink\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_a
    const-string v1, "altLink"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 335
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'altLink\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_b
    iget-wide v4, v0, Lio/realm/j$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 338
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'altLink\' is required. Either set @Required to field \'altLink\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_c
    const-string v1, "link"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 341
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'link\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_d
    const-string v1, "link"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 344
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'link\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_e
    iget-wide v4, v0, Lio/realm/j$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_f

    .line 347
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'link\' is required. Either set @Required to field \'link\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_f
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 350
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_10
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 353
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_11
    iget-wide v4, v0, Lio/realm/j$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 356
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'packageName\' is required. Either set @Required to field \'packageName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_12
    const-string v1, "path"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 359
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'path\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_13
    const-string v1, "path"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 362
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'path\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_14
    iget-wide v4, v0, Lio/realm/j$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_15

    .line 365
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'path\' is required. Either set @Required to field \'path\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_15
    const-string v1, "fileType"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 368
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'fileType\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_16
    const-string v1, "fileType"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 371
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'fileType\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_17
    iget-wide v4, v0, Lio/realm/j$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 374
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'fileType\' does support null values in the existing Realm file. Use corresponding boxed type for field \'fileType\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_18
    const-string v1, "progress"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 377
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'progress\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_19
    const-string v1, "progress"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1a

    .line 380
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'progress\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1a
    iget-wide v4, v0, Lio/realm/j$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 383
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'progress\' does support null values in the existing Realm file. Use corresponding boxed type for field \'progress\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1b
    const-string v1, "status"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 386
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'status\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1c
    const-string v1, "status"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1d

    .line 389
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'status\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1d
    iget-wide v4, v0, Lio/realm/j$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 392
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'status\' does support null values in the existing Realm file. Use corresponding boxed type for field \'status\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1e
    const-string v1, "fileName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 395
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'fileName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1f
    const-string v1, "fileName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_20

    .line 398
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'fileName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_20
    iget-wide v4, v0, Lio/realm/j$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_21

    .line 401
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'fileName\' is required. Either set @Required to field \'fileName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_21
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 404
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_22
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_23

    .line 407
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'versionCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_23
    iget-wide v4, v0, Lio/realm/j$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 410
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'versionCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_24
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 413
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_25
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_26

    .line 416
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'versionName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_26
    iget-wide v4, v0, Lio/realm/j$a;->l:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_28

    .line 419
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionName\' is required. Either set @Required to field \'versionName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_27
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'FileToDownload\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_28
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1096
    if-ne p0, p1, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return v0

    .line 1097
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

    .line 1098
    :cond_3
    check-cast p1, Lio/realm/j;

    .line 1100
    iget-object v2, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 1101
    iget-object v3, p1, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 1102
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1104
    :cond_6
    iget-object v2, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1105
    iget-object v3, p1, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 1106
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1108
    :cond_9
    iget-object v2, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/j;->b:Lio/realm/t;

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

    .line 1083
    iget-object v1, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 1084
    iget-object v2, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1085
    iget-object v3, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1088
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1089
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1090
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1091
    return v0

    :cond_1
    move v1, v0

    .line 1088
    goto :goto_0
.end method

.method public realmGet$altLink()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 141
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$downloadId()I
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 130
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$fileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 234
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$fileType()I
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 201
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$link()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 156
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$md5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 115
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 171
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 186
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$progress()I
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 212
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$status()I
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 223
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$versionCode()I
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 249
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 260
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$altLink(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$downloadId(I)V
    .locals 6

    .prologue
    .line 134
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 135
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->b:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 136
    return-void
.end method

.method public realmSet$fileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 239
    if-nez p1, :cond_0

    .line 240
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$fileType(I)V
    .locals 6

    .prologue
    .line 205
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 206
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->g:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 207
    return-void
.end method

.method public realmSet$link(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 161
    if-nez p1, :cond_0

    .line 162
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$md5(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 120
    if-nez p1, :cond_0

    .line 121
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 176
    if-nez p1, :cond_0

    .line 177
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->f:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$progress(I)V
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 217
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->h:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 218
    return-void
.end method

.method public realmSet$status(I)V
    .locals 6

    .prologue
    .line 227
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 228
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->i:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 229
    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 6

    .prologue
    .line 253
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 254
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->k:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 255
    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->l:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lio/realm/j;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/j;->a:Lio/realm/j$a;

    iget-wide v2, v1, Lio/realm/j$a;->l:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1021
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    const-string v0, "Invalid object"

    .line 1073
    :goto_0
    return-object v0

    .line 1024
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "FileToDownload = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    const-string v0, "{md5:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {p0}, Lio/realm/j;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/j;->realmGet$md5()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    const-string v0, "{downloadId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p0}, Lio/realm/j;->realmGet$downloadId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1031
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v0, "{altLink:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {p0}, Lio/realm/j;->realmGet$altLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/j;->realmGet$altLink()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    const-string v0, "{link:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {p0}, Lio/realm/j;->realmGet$link()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/j;->realmGet$link()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {p0}, Lio/realm/j;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/j;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    const-string v0, "{path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {p0}, Lio/realm/j;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/j;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    const-string v0, "{fileType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-virtual {p0}, Lio/realm/j;->realmGet$fileType()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1051
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v0, "{progress:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {p0}, Lio/realm/j;->realmGet$progress()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1055
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v0, "{status:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {p0}, Lio/realm/j;->realmGet$status()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1059
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v0, "{fileName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {p0}, Lio/realm/j;->realmGet$fileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/realm/j;->realmGet$fileName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    const-string v0, "{versionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {p0}, Lio/realm/j;->realmGet$versionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const-string v0, "{versionName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {p0}, Lio/realm/j;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/realm/j;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1026
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 1034
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 1038
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 1042
    :cond_4
    const-string v0, "null"

    goto/16 :goto_4

    .line 1046
    :cond_5
    const-string v0, "null"

    goto/16 :goto_5

    .line 1062
    :cond_6
    const-string v0, "null"

    goto :goto_6

    .line 1070
    :cond_7
    const-string v0, "null"

    goto :goto_7
.end method
