.class public Lio/realm/MinimalAdRealmProxy;
.super Lcm/aptoide/pt/database/realm/MinimalAd;
.source "MinimalAdRealmProxy.java"

# interfaces
.implements Lio/realm/internal/j;
.implements Lio/realm/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/MinimalAdRealmProxy$a;
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
.field private final a:Lio/realm/MinimalAdRealmProxy$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v1, "networkId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v1, "clickUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v1, "cpcUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v1, "cpdUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "adId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v1, "cpiUrl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "iconPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/MinimalAdRealmProxy;->c:Ljava/util/List;

    .line 100
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/MinimalAd;-><init>()V

    .line 103
    check-cast p1, Lio/realm/MinimalAdRealmProxy$a;

    iput-object p1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    .line 104
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    .line 105
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;Ljava/util/Map;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 759
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

    .line 760
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 833
    :goto_0
    return-wide v4

    .line 762
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 764
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v2, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/MinimalAdRealmProxy$a;

    .line 765
    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 766
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 767
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$description()Ljava/lang/String;

    move-result-object v6

    .line 768
    if-eqz v6, :cond_1

    .line 769
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_1
    move-object v2, p1

    .line 773
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 774
    if-eqz v6, :cond_2

    .line 775
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 779
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v6

    .line 780
    if-eqz v6, :cond_3

    .line 781
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :goto_3
    move-object v2, p1

    .line 785
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v6

    .line 786
    if-eqz v6, :cond_4

    .line 787
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, p1

    .line 791
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v6

    .line 792
    if-eqz v6, :cond_5

    .line 793
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_5
    move-object v2, p1

    .line 797
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v6

    .line 798
    if-eqz v6, :cond_6

    .line 799
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_6
    move-object v2, p1

    .line 803
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$appId()Ljava/lang/Long;

    move-result-object v6

    .line 804
    if-eqz v6, :cond_7

    .line 805
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :goto_7
    move-object v2, p1

    .line 809
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$adId()Ljava/lang/Long;

    move-result-object v6

    .line 810
    if-eqz v6, :cond_8

    .line 811
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :goto_8
    move-object v2, p1

    .line 815
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v6

    .line 816
    if-eqz v6, :cond_9

    .line 817
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v2, p1

    .line 821
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$name()Ljava/lang/String;

    move-result-object v6

    .line 822
    if-eqz v6, :cond_a

    .line 823
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 827
    :goto_a
    check-cast p1, Lio/realm/o;

    invoke-interface {p1}, Lio/realm/o;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v6

    .line 828
    if-eqz v6, :cond_b

    .line 829
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 771
    :cond_1
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_1

    .line 777
    :cond_2
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 783
    :cond_3
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 789
    :cond_4
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 795
    :cond_5
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 801
    :cond_6
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_6

    .line 807
    :cond_7
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_7

    .line 813
    :cond_8
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_8

    .line 819
    :cond_9
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_9

    .line 825
    :cond_a
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_a

    .line 831
    :cond_b
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0
.end method

.method public static a(Lcm/aptoide/pt/database/realm/MinimalAd;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/MinimalAd;"
        }
    .end annotation

    .prologue
    .line 921
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 922
    :cond_0
    const/4 v0, 0x0

    .line 949
    :goto_0
    return-object v0

    .line 924
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 926
    if-eqz v0, :cond_3

    .line 928
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 929
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    goto :goto_0

    .line 931
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 932
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 938
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$description(Ljava/lang/String;)V

    move-object v0, v1

    .line 939
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 940
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$networkId(Ljava/lang/Long;)V

    move-object v0, v1

    .line 941
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$clickUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 942
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$cpcUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 943
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$cpdUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 944
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$appId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$appId(Ljava/lang/Long;)V

    move-object v0, v1

    .line 945
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$adId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$adId(Ljava/lang/Long;)V

    move-object v0, v1

    .line 946
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$cpiUrl(Ljava/lang/String;)V

    move-object v0, v1

    .line 947
    check-cast v0, Lio/realm/o;

    move-object v2, p0

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$name(Ljava/lang/String;)V

    move-object v0, v1

    .line 948
    check-cast v0, Lio/realm/o;

    check-cast p0, Lio/realm/o;

    invoke-interface {p0}, Lio/realm/o;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/o;->realmSet$iconPath(Ljava/lang/String;)V

    move-object v0, v1

    .line 949
    goto/16 :goto_0

    .line 935
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/MinimalAd;-><init>()V

    .line 936
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/MinimalAd;"
        }
    .end annotation

    .prologue
    .line 604
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

    .line 605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
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

    .line 614
    :goto_0
    return-object p1

    .line 610
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 611
    if-eqz v0, :cond_2

    .line 612
    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    move-object p1, v0

    goto :goto_0

    .line 614
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/realm/MinimalAdRealmProxy;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/MinimalAd;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Lio/realm/internal/e;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 282
    const-string v0, "class_MinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "class_MinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 284
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 285
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 286
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "networkId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 287
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "clickUrl"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 288
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "cpcUrl"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 289
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "cpdUrl"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 290
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "appId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 291
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "adId"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 292
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "cpiUrl"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 293
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 294
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "iconPath"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 295
    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_MinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const-string v0, "class_MinimalAd"

    return-object v0
.end method

.method public static a(Lio/realm/u;Ljava/util/Iterator;Ljava/util/Map;)V
    .locals 10
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
    .line 837
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 839
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v3, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {v2, v3}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/MinimalAdRealmProxy$a;

    .line 841
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 842
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 843
    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 844
    instance-of v2, v9, Lio/realm/internal/j;

    if-eqz v2, :cond_1

    move-object v2, v9

    check-cast v2, Lio/realm/internal/j;

    invoke-interface {v2}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v9

    check-cast v2, Lio/realm/internal/j;

    invoke-interface {v2}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v9

    .line 845
    check-cast v2, Lio/realm/internal/j;

    invoke-interface {v2}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 848
    :cond_1
    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 849
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    .line 850
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$description()Ljava/lang/String;

    move-result-object v6

    .line 851
    if-eqz v6, :cond_2

    .line 852
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_1
    move-object v2, v9

    .line 856
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 857
    if-eqz v6, :cond_3

    .line 858
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, v9

    .line 862
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v6

    .line 863
    if-eqz v6, :cond_4

    .line 864
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :goto_3
    move-object v2, v9

    .line 868
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v6

    .line 869
    if-eqz v6, :cond_5

    .line 870
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, v9

    .line 874
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v6

    .line 875
    if-eqz v6, :cond_6

    .line 876
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_5
    move-object v2, v9

    .line 880
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v6

    .line 881
    if-eqz v6, :cond_7

    .line 882
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_6
    move-object v2, v9

    .line 886
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$appId()Ljava/lang/Long;

    move-result-object v6

    .line 887
    if-eqz v6, :cond_8

    .line 888
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :goto_7
    move-object v2, v9

    .line 892
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$adId()Ljava/lang/Long;

    move-result-object v6

    .line 893
    if-eqz v6, :cond_9

    .line 894
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    :goto_8
    move-object v2, v9

    .line 898
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v6

    .line 899
    if-eqz v6, :cond_a

    .line 900
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_9
    move-object v2, v9

    .line 904
    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$name()Ljava/lang/String;

    move-result-object v6

    .line 905
    if-eqz v6, :cond_b

    .line 906
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 910
    :goto_a
    check-cast v9, Lio/realm/o;

    invoke-interface {v9}, Lio/realm/o;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v6

    .line 911
    if-eqz v6, :cond_c

    .line 912
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :cond_2
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_1

    .line 860
    :cond_3
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_2

    .line 866
    :cond_4
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_3

    .line 872
    :cond_5
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_4

    .line 878
    :cond_6
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 884
    :cond_7
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_6

    .line 890
    :cond_8
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_7

    .line 896
    :cond_9
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_8

    .line 902
    :cond_a
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_9

    .line 908
    :cond_b
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_a

    .line 914
    :cond_c
    iget-wide v2, v8, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 918
    :cond_d
    return-void
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/MinimalAd;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/MinimalAd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/MinimalAd;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/MinimalAd;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 620
    if-eqz v0, :cond_0

    .line 621
    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    .line 636
    :goto_0
    return-object v0

    .line 623
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    invoke-virtual {p0, v0}, Lio/realm/u;->a(Ljava/lang/Class;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/MinimalAd;

    move-object v1, v0

    .line 624
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 625
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$description()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$description(Ljava/lang/String;)V

    move-object v1, v0

    .line 626
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 627
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$networkId(Ljava/lang/Long;)V

    move-object v1, v0

    .line 628
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$clickUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 629
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$cpcUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 630
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$cpdUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 631
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$appId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$appId(Ljava/lang/Long;)V

    move-object v1, v0

    .line 632
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$adId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$adId(Ljava/lang/Long;)V

    move-object v1, v0

    .line 633
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$cpiUrl(Ljava/lang/String;)V

    move-object v1, v0

    .line 634
    check-cast v1, Lio/realm/o;

    move-object v2, p1

    check-cast v2, Lio/realm/o;

    invoke-interface {v2}, Lio/realm/o;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$name(Ljava/lang/String;)V

    move-object v1, v0

    .line 635
    check-cast v1, Lio/realm/o;

    check-cast p1, Lio/realm/o;

    invoke-interface {p1}, Lio/realm/o;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/o;->realmSet$iconPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/MinimalAdRealmProxy$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0xb

    .line 302
    const-string v0, "class_MinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 303
    const-string v0, "class_MinimalAd"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 11 but was "

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

    .line 307
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 309
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Lio/realm/MinimalAdRealmProxy$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/MinimalAdRealmProxy$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 314
    const-string v1, "description"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'description\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    const-string v1, "description"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 318
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'description\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_3
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 321
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'description\' is required. Either set @Required to field \'description\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_4
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 324
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_5
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6

    .line 327
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_6
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 330
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'packageName\' is required. Either set @Required to field \'packageName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_7
    const-string v1, "networkId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 333
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'networkId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_8
    const-string v1, "networkId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_9

    .line 336
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Long\' for field \'networkId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_9
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_a

    .line 339
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'networkId\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'networkId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_a
    const-string v1, "clickUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 342
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'clickUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_b
    const-string v1, "clickUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_c

    .line 345
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'clickUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_c
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_d

    .line 348
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'clickUrl\' is required. Either set @Required to field \'clickUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_d
    const-string v1, "cpcUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 351
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'cpcUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_e
    const-string v1, "cpcUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_f

    .line 354
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'cpcUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_f
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_10

    .line 357
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'cpcUrl\' is required. Either set @Required to field \'cpcUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_10
    const-string v1, "cpdUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 360
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'cpdUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_11
    const-string v1, "cpdUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_12

    .line 363
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'cpdUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_12
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 366
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'cpdUrl\' is required. Either set @Required to field \'cpdUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_13
    const-string v1, "appId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 369
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'appId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_14
    const-string v1, "appId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_15

    .line 372
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Long\' for field \'appId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_15
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_16

    .line 375
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'appId\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'appId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_16
    const-string v1, "adId"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 378
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'adId\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_17
    const-string v1, "adId"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_18

    .line 381
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'Long\' for field \'adId\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_18
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_19

    .line 384
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'adId\' does not support null values in the existing Realm file. Either set @Required, use the primitive type for field \'adId\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_19
    const-string v1, "cpiUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 387
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'cpiUrl\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1a
    const-string v1, "cpiUrl"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1b

    .line 390
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'cpiUrl\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1b
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 393
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'cpiUrl\' is required. Either set @Required to field \'cpiUrl\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1c
    const-string v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 396
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'name\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1d
    const-string v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_1e

    .line 399
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'name\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1e
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 402
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'name\' is required. Either set @Required to field \'name\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1f
    const-string v1, "iconPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 405
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'iconPath\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_20
    const-string v1, "iconPath"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_21

    .line 408
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'iconPath\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_21
    iget-wide v4, v0, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_23

    .line 411
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'iconPath\' is required. Either set @Required to field \'iconPath\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_22
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'MinimalAd\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_23
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1025
    if-ne p0, p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    .line 1026
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

    .line 1027
    :cond_3
    check-cast p1, Lio/realm/MinimalAdRealmProxy;

    .line 1029
    iget-object v2, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 1030
    iget-object v3, p1, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 1031
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 1033
    :cond_6
    iget-object v2, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1034
    iget-object v3, p1, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 1035
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 1037
    :cond_9
    iget-object v2, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

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

    .line 1012
    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 1013
    iget-object v2, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 1014
    iget-object v3, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 1017
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 1018
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 1019
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1020
    return v0

    :cond_1
    move v1, v0

    .line 1017
    goto :goto_0
.end method

.method public realmGet$adId()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 221
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$appId()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 203
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$clickUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 158
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cpcUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 173
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cpdUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 188
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$cpiUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 239
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$description()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 110
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$iconPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 269
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 254
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$networkId()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 140
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 125
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$adId(Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 228
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 229
    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->h:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    goto :goto_0
.end method

.method public realmSet$appId(Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 210
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->g:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    goto :goto_0
.end method

.method public realmSet$clickUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 163
    if-nez p1, :cond_0

    .line 164
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->d:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$cpcUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 178
    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$cpdUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->f:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$cpiUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 244
    if-nez p1, :cond_0

    .line 245
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->i:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$description(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 115
    if-nez p1, :cond_0

    .line 116
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$iconPath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 274
    if-nez p1, :cond_0

    .line 275
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->k:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 259
    if-nez p1, :cond_0

    .line 260
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->j:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$networkId(Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 147
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 148
    if-nez p1, :cond_0

    .line 149
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->c:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lio/realm/MinimalAdRealmProxy;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/MinimalAdRealmProxy;->a:Lio/realm/MinimalAdRealmProxy$a;

    iget-wide v2, v1, Lio/realm/MinimalAdRealmProxy$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 954
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    const-string v0, "Invalid object"

    .line 1002
    :goto_0
    return-object v0

    .line 957
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "MinimalAd = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 958
    const-string v0, "{description:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$description()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const-string v0, "{networkId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$networkId()Ljava/lang/Long;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 968
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string v0, "{clickUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$clickUrl()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v0, "{cpcUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$cpcUrl()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-string v0, "{cpdUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$cpdUrl()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    const-string v0, "{appId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$appId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$appId()Ljava/lang/Long;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 984
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    const-string v0, "{adId:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$adId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$adId()Ljava/lang/Long;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 988
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v0, "{cpiUrl:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$cpiUrl()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v0, "{name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v0, "{iconPath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lio/realm/MinimalAdRealmProxy;->realmGet$iconPath()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 959
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 963
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 967
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 971
    :cond_4
    const-string v0, "null"

    goto/16 :goto_4

    .line 975
    :cond_5
    const-string v0, "null"

    goto/16 :goto_5

    .line 979
    :cond_6
    const-string v0, "null"

    goto/16 :goto_6

    .line 983
    :cond_7
    const-string v0, "null"

    goto/16 :goto_7

    .line 987
    :cond_8
    const-string v0, "null"

    goto/16 :goto_8

    .line 991
    :cond_9
    const-string v0, "null"

    goto :goto_9

    .line 995
    :cond_a
    const-string v0, "null"

    goto :goto_a

    .line 999
    :cond_b
    const-string v0, "null"

    goto :goto_b
.end method
