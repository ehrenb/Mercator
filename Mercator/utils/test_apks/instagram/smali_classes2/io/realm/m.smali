.class public Lio/realm/m;
.super Lcm/aptoide/pt/database/realm/Installed;
.source "InstalledRealmProxy.java"

# interfaces
.implements Lio/realm/internal/j;
.implements Lio/realm/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/m$a;
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
.field private final a:Lio/realm/m$a;

.field private final b:Lio/realm/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "packageName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v1, "versionCode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v1, "versionName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "signature"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "systemApp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "storeName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/realm/m;->c:Ljava/util/List;

    .line 85
    return-void
.end method

.method constructor <init>(Lio/realm/internal/b;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lcm/aptoide/pt/database/realm/Installed;-><init>()V

    .line 88
    check-cast p1, Lio/realm/m$a;

    iput-object p1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    .line 89
    new-instance v0, Lio/realm/t;

    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {v0, v1, p0}, Lio/realm/t;-><init>(Ljava/lang/Class;Lio/realm/ac;)V

    iput-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    .line 90
    return-void
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Ljava/lang/Long;",
            ">;)J"
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

    invoke-virtual {v0}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/u;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    check-cast p1, Lio/realm/internal/j;

    invoke-interface {p1}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 705
    :goto_0
    return-wide v4

    .line 655
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    .line 656
    invoke-virtual {v3}, Lio/realm/internal/Table;->a()J

    move-result-wide v0

    .line 657
    iget-object v2, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v4, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v2, v4}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lio/realm/m$a;

    .line 658
    invoke-virtual {v3}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v4, p1

    .line 659
    check-cast v4, Lio/realm/n;

    invoke-interface {v4}, Lio/realm/n;->realmGet$packageName()Ljava/lang/String;

    move-result-object v6

    .line 661
    if-nez v6, :cond_2

    .line 662
    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    .line 666
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v7, v4, v10

    if-nez v7, :cond_1

    .line 667
    const-wide/16 v4, 0x1

    invoke-static {v0, v1, v4, v5}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v4

    .line 668
    if-eqz v6, :cond_1

    .line 669
    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 672
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p1

    .line 673
    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$icon()Ljava/lang/String;

    move-result-object v6

    .line 674
    if-eqz v6, :cond_3

    .line 675
    iget-wide v2, v8, Lio/realm/m$a;->a:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v2, p1

    .line 679
    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$name()Ljava/lang/String;

    move-result-object v6

    .line 680
    if-eqz v6, :cond_4

    .line 681
    iget-wide v2, v8, Lio/realm/m$a;->c:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 685
    :goto_3
    iget-wide v2, v8, Lio/realm/m$a;->d:J

    move-object v6, p1

    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$versionCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v2, p1

    .line 686
    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$versionName()Ljava/lang/String;

    move-result-object v6

    .line 687
    if-eqz v6, :cond_5

    .line 688
    iget-wide v2, v8, Lio/realm/m$a;->e:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v2, p1

    .line 692
    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$signature()Ljava/lang/String;

    move-result-object v6

    .line 693
    if-eqz v6, :cond_6

    .line 694
    iget-wide v2, v8, Lio/realm/m$a;->f:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 698
    :goto_5
    iget-wide v2, v8, Lio/realm/m$a;->g:J

    move-object v6, p1

    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$systemApp()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    .line 699
    check-cast p1, Lio/realm/n;

    invoke-interface {p1}, Lio/realm/n;->realmGet$storeName()Ljava/lang/String;

    move-result-object v6

    .line 700
    if-eqz v6, :cond_7

    .line 701
    iget-wide v2, v8, Lio/realm/m$a;->h:J

    invoke-static/range {v0 .. v6}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 664
    :cond_2
    invoke-static {v0, v1, v2, v3, v6}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 677
    :cond_3
    iget-wide v2, v8, Lio/realm/m$a;->a:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 683
    :cond_4
    iget-wide v2, v8, Lio/realm/m$a;->c:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 690
    :cond_5
    iget-wide v2, v8, Lio/realm/m$a;->e:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 696
    :cond_6
    iget-wide v2, v8, Lio/realm/m$a;->f:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 703
    :cond_7
    iget-wide v2, v8, Lio/realm/m$a;->h:J

    invoke-static/range {v0 .. v5}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0
.end method

.method public static a(Lcm/aptoide/pt/database/realm/Installed;IILjava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j$a",
            "<",
            "Lio/realm/ac;",
            ">;>;)",
            "Lcm/aptoide/pt/database/realm/Installed;"
        }
    .end annotation

    .prologue
    .line 772
    if-gt p1, p2, :cond_0

    if-nez p0, :cond_1

    .line 773
    :cond_0
    const/4 v0, 0x0

    .line 797
    :goto_0
    return-object v0

    .line 775
    :cond_1
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j$a;

    .line 777
    if-eqz v0, :cond_3

    .line 779
    iget v1, v0, Lio/realm/internal/j$a;->a:I

    if-lt p1, v1, :cond_2

    .line 780
    iget-object v0, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    goto :goto_0

    .line 782
    :cond_2
    iget-object v1, v0, Lio/realm/internal/j$a;->b:Lio/realm/ac;

    check-cast v1, Lcm/aptoide/pt/database/realm/Installed;

    .line 783
    iput p1, v0, Lio/realm/internal/j$a;->a:I

    :goto_1
    move-object v0, v1

    .line 789
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, v1

    .line 790
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$packageName(Ljava/lang/String;)V

    move-object v0, v1

    .line 791
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$name(Ljava/lang/String;)V

    move-object v0, v1

    .line 792
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$versionCode(I)V

    move-object v0, v1

    .line 793
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, v1

    .line 794
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$signature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$signature(Ljava/lang/String;)V

    move-object v0, v1

    .line 795
    check-cast v0, Lio/realm/n;

    move-object v2, p0

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$systemApp()Z

    move-result v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$systemApp(Z)V

    move-object v0, v1

    .line 796
    check-cast v0, Lio/realm/n;

    check-cast p0, Lio/realm/n;

    invoke-interface {p0}, Lio/realm/n;->realmGet$storeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/realm/n;->realmSet$storeName(Ljava/lang/String;)V

    move-object v0, v1

    .line 797
    goto :goto_0

    .line 786
    :cond_3
    new-instance v1, Lcm/aptoide/pt/database/realm/Installed;

    invoke-direct {v1}, Lcm/aptoide/pt/database/realm/Installed;-><init>()V

    .line 787
    new-instance v0, Lio/realm/internal/j$a;

    invoke-direct {v0, p1, v1}, Lio/realm/internal/j$a;-><init>(ILio/realm/ac;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;Lcm/aptoide/pt/database/realm/Installed;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Installed;"
        }
    .end annotation

    .prologue
    .line 801
    move-object v0, p1

    check-cast v0, Lio/realm/n;

    move-object v1, p2

    check-cast v1, Lio/realm/n;

    invoke-interface {v1}, Lio/realm/n;->realmGet$icon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$icon(Ljava/lang/String;)V

    move-object v0, p1

    .line 802
    check-cast v0, Lio/realm/n;

    move-object v1, p2

    check-cast v1, Lio/realm/n;

    invoke-interface {v1}, Lio/realm/n;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$name(Ljava/lang/String;)V

    move-object v0, p1

    .line 803
    check-cast v0, Lio/realm/n;

    move-object v1, p2

    check-cast v1, Lio/realm/n;

    invoke-interface {v1}, Lio/realm/n;->realmGet$versionCode()I

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$versionCode(I)V

    move-object v0, p1

    .line 804
    check-cast v0, Lio/realm/n;

    move-object v1, p2

    check-cast v1, Lio/realm/n;

    invoke-interface {v1}, Lio/realm/n;->realmGet$versionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$versionName(Ljava/lang/String;)V

    move-object v0, p1

    .line 805
    check-cast v0, Lio/realm/n;

    move-object v1, p2

    check-cast v1, Lio/realm/n;

    invoke-interface {v1}, Lio/realm/n;->realmGet$signature()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$signature(Ljava/lang/String;)V

    move-object v0, p1

    .line 806
    check-cast v0, Lio/realm/n;

    move-object v1, p2

    check-cast v1, Lio/realm/n;

    invoke-interface {v1}, Lio/realm/n;->realmGet$systemApp()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$systemApp(Z)V

    move-object v0, p1

    .line 807
    check-cast v0, Lio/realm/n;

    check-cast p2, Lio/realm/n;

    invoke-interface {p2}, Lio/realm/n;->realmGet$storeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/realm/n;->realmSet$storeName(Ljava/lang/String;)V

    .line 808
    return-object p1
.end method

.method public static a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Installed;"
        }
    .end annotation

    .prologue
    .line 488
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

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
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

    .line 523
    :goto_0
    return-object p1

    .line 494
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 495
    if-eqz v0, :cond_2

    .line 496
    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    move-object p1, v0

    goto :goto_0

    .line 498
    :cond_2
    const/4 v1, 0x0

    .line 500
    if-eqz p2, :cond_6

    .line 501
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {p0, v0}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Lio/realm/internal/Table;->f()J

    move-result-wide v2

    move-object v0, p1

    .line 503
    check-cast v0, Lio/realm/n;

    invoke-interface {v0}, Lio/realm/n;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    .line 505
    if-nez v0, :cond_3

    .line 506
    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->q(J)J

    move-result-wide v2

    .line 510
    :goto_1
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 511
    new-instance v1, Lio/realm/m;

    iget-object v0, p0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v5, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v0, v5}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/m;-><init>(Lio/realm/internal/b;)V

    move-object v0, v1

    .line 512
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/t;->a(Lio/realm/a;)V

    move-object v0, v1

    .line 513
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {v0}, Lio/realm/internal/j;->b()Lio/realm/t;

    move-result-object v0

    invoke-virtual {v4, v2, v3}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/UncheckedRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/realm/t;->a(Lio/realm/internal/l;)V

    move-object v0, v1

    .line 514
    check-cast v0, Lio/realm/internal/j;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, p2

    .line 520
    :goto_2
    if-eqz v0, :cond_5

    .line 521
    invoke-static {p0, v1, p1, p3}, Lio/realm/m;->a(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;Lcm/aptoide/pt/database/realm/Installed;Ljava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;

    move-result-object p1

    goto :goto_0

    .line 508
    :cond_3
    invoke-virtual {v4, v2, v3, v0}, Lio/realm/internal/Table;->a(JLjava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 516
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 523
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lio/realm/m;->b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;

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

    .line 205
    const-string v0, "class_Installed"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "class_Installed"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 207
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 208
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 209
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 210
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 211
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 212
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "signature"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 213
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v2, "systemApp"

    invoke-virtual {v0, v1, v2, v4}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 214
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v2, "storeName"

    invoke-virtual {v0, v1, v2, v3}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    .line 215
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/Table;->m(J)V

    .line 216
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lio/realm/internal/Table;->b(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class_Installed"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, "class_Installed"

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
    .line 709
    const-class v2, Lcm/aptoide/pt/database/realm/Installed;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/realm/u;->d(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v5

    .line 710
    invoke-virtual {v5}, Lio/realm/internal/Table;->a()J

    move-result-wide v2

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/realm/u;->f:Lio/realm/ah;

    const-class v6, Lcm/aptoide/pt/database/realm/Installed;

    invoke-virtual {v4, v6}, Lio/realm/ah;->a(Ljava/lang/Class;)Lio/realm/internal/b;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lio/realm/m$a;

    .line 712
    invoke-virtual {v5}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    .line 714
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 715
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcm/aptoide/pt/database/realm/Installed;

    .line 716
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 717
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

    .line 718
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

    .line 721
    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$packageName()Ljava/lang/String;

    move-result-object v8

    .line 723
    if-nez v8, :cond_3

    .line 724
    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v6

    .line 728
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    .line 729
    const-wide/16 v6, 0x1

    invoke-static {v2, v3, v6, v7}, Lio/realm/internal/Table;->nativeAddEmptyRow(JJ)J

    move-result-wide v6

    .line 730
    if-eqz v8, :cond_2

    .line 731
    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :cond_2
    move-wide v10, v6

    .line 734
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 735
    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$icon()Ljava/lang/String;

    move-result-object v12

    .line 736
    if-eqz v12, :cond_4

    .line 737
    iget-wide v8, v14, Lio/realm/m$a;->a:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_2
    move-object v6, v15

    .line 741
    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$name()Ljava/lang/String;

    move-result-object v12

    .line 742
    if-eqz v12, :cond_5

    .line 743
    iget-wide v8, v14, Lio/realm/m$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 747
    :goto_3
    iget-wide v8, v14, Lio/realm/m$a;->d:J

    move-object v6, v15

    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$versionCode()I

    move-result v6

    int-to-long v12, v6

    move-wide v6, v2

    invoke-static/range {v6 .. v13}, Lio/realm/internal/Table;->nativeSetLong(JJJJ)V

    move-object v6, v15

    .line 748
    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$versionName()Ljava/lang/String;

    move-result-object v12

    .line 749
    if-eqz v12, :cond_6

    .line 750
    iget-wide v8, v14, Lio/realm/m$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    :goto_4
    move-object v6, v15

    .line 754
    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$signature()Ljava/lang/String;

    move-result-object v12

    .line 755
    if-eqz v12, :cond_7

    .line 756
    iget-wide v8, v14, Lio/realm/m$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    .line 760
    :goto_5
    iget-wide v8, v14, Lio/realm/m$a;->g:J

    move-object v6, v15

    check-cast v6, Lio/realm/n;

    invoke-interface {v6}, Lio/realm/n;->realmGet$systemApp()Z

    move-result v12

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZ)V

    .line 761
    check-cast v15, Lio/realm/n;

    invoke-interface {v15}, Lio/realm/n;->realmGet$storeName()Ljava/lang/String;

    move-result-object v12

    .line 762
    if-eqz v12, :cond_8

    .line 763
    iget-wide v8, v14, Lio/realm/m$a;->h:J

    move-wide v6, v2

    invoke-static/range {v6 .. v12}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 726
    :cond_3
    invoke-static {v2, v3, v4, v5, v8}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_1

    .line 739
    :cond_4
    iget-wide v8, v14, Lio/realm/m$a;->a:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_2

    .line 745
    :cond_5
    iget-wide v8, v14, Lio/realm/m$a;->c:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_3

    .line 752
    :cond_6
    iget-wide v8, v14, Lio/realm/m$a;->e:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_4

    .line 758
    :cond_7
    iget-wide v8, v14, Lio/realm/m$a;->f:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto :goto_5

    .line 765
    :cond_8
    iget-wide v8, v14, Lio/realm/m$a;->h:J

    move-wide v6, v2

    invoke-static/range {v6 .. v11}, Lio/realm/internal/Table;->nativeSetNull(JJJ)V

    goto/16 :goto_0

    .line 769
    :cond_9
    return-void
.end method

.method public static b(Lio/realm/u;Lcm/aptoide/pt/database/realm/Installed;ZLjava/util/Map;)Lcm/aptoide/pt/database/realm/Installed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/u;",
            "Lcm/aptoide/pt/database/realm/Installed;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Lio/realm/ac;",
            "Lio/realm/internal/j;",
            ">;)",
            "Lcm/aptoide/pt/database/realm/Installed;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/j;

    .line 530
    if-eqz v0, :cond_0

    .line 531
    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    .line 543
    :goto_0
    return-object v0

    .line 533
    :cond_0
    const-class v1, Lcm/aptoide/pt/database/realm/Installed;

    move-object v0, p1

    check-cast v0, Lio/realm/n;

    invoke-interface {v0}, Lio/realm/n;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/realm/u;->a(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/ac;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Installed;

    move-object v1, v0

    .line 534
    check-cast v1, Lio/realm/internal/j;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 535
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$icon()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$icon(Ljava/lang/String;)V

    move-object v1, v0

    .line 536
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$packageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$packageName(Ljava/lang/String;)V

    move-object v1, v0

    .line 537
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$name(Ljava/lang/String;)V

    move-object v1, v0

    .line 538
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$versionCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$versionCode(I)V

    move-object v1, v0

    .line 539
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$versionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$versionName(Ljava/lang/String;)V

    move-object v1, v0

    .line 540
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$signature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$signature(Ljava/lang/String;)V

    move-object v1, v0

    .line 541
    check-cast v1, Lio/realm/n;

    move-object v2, p1

    check-cast v2, Lio/realm/n;

    invoke-interface {v2}, Lio/realm/n;->realmGet$systemApp()Z

    move-result v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$systemApp(Z)V

    move-object v1, v0

    .line 542
    check-cast v1, Lio/realm/n;

    check-cast p1, Lio/realm/n;

    invoke-interface {p1}, Lio/realm/n;->realmGet$storeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/realm/n;->realmSet$storeName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lio/realm/internal/e;)Lio/realm/m$a;
    .locals 8

    .prologue
    const-wide/16 v6, 0x8

    .line 223
    const-string v0, "class_Installed"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 224
    const-string v0, "class_Installed"

    invoke-virtual {p0, v0}, Lio/realm/internal/e;->c(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lio/realm/internal/Table;->d()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field count does not match - expected 8 but was "

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

    .line 228
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    .line 230
    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->e(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->f(J)Lio/realm/RealmFieldType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Lio/realm/m$a;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/realm/m$a;-><init>(Ljava/lang/String;Lio/realm/internal/Table;)V

    .line 235
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'icon\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    const-string v1, "icon"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_3

    .line 239
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'icon\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_3
    iget-wide v4, v0, Lio/realm/m$a;->a:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 242
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'icon\' is required. Either set @Required to field \'icon\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_4
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 245
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'packageName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_5
    const-string v1, "packageName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_6

    .line 248
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'packageName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_6
    iget-wide v4, v0, Lio/realm/m$a;->b:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_7

    .line 251
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@PrimaryKey field \'packageName\' does not support null values in the existing Realm file. Migrate using RealmObjectSchema.setNullable(), or mark the field as @Required."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_7
    invoke-virtual {v2}, Lio/realm/internal/Table;->f()J

    move-result-wide v4

    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 254
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Primary key not defined for field \'packageName\' in existing Realm file. Add @PrimaryKey."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_8
    const-string v1, "packageName"

    invoke-virtual {v2, v1}, Lio/realm/internal/Table;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->o(J)Z

    move-result v1

    if-nez v1, :cond_9

    .line 257
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Index not defined for field \'packageName\' in existing Realm file. Either set @Index or migrate using io.realm.internal.Table.removeSearchIndex()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_9
    const-string v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 260
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'name\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_a
    const-string v1, "name"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_b

    .line 263
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'name\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_b
    iget-wide v4, v0, Lio/realm/m$a;->c:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 266
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'name\' is required. Either set @Required to field \'name\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_c
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 269
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionCode\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_d
    const-string v1, "versionCode"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_e

    .line 272
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'int\' for field \'versionCode\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_e
    iget-wide v4, v0, Lio/realm/m$a;->d:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 275
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionCode\' does support null values in the existing Realm file. Use corresponding boxed type for field \'versionCode\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_f
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 278
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'versionName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_10
    const-string v1, "versionName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_11

    .line 281
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'versionName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_11
    iget-wide v4, v0, Lio/realm/m$a;->e:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 284
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'versionName\' is required. Either set @Required to field \'versionName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_12
    const-string v1, "signature"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 287
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'signature\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_13
    const-string v1, "signature"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_14

    .line 290
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'signature\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_14
    iget-wide v4, v0, Lio/realm/m$a;->f:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_15

    .line 293
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'signature\' is required. Either set @Required to field \'signature\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_15
    const-string v1, "systemApp"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 296
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'systemApp\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_16
    const-string v1, "systemApp"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    if-eq v1, v4, :cond_17

    .line 299
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'boolean\' for field \'systemApp\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_17
    iget-wide v4, v0, Lio/realm/m$a;->g:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 302
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'systemApp\' does support null values in the existing Realm file. Use corresponding boxed type for field \'systemApp\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_18
    const-string v1, "storeName"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 305
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing field \'storeName\' in existing Realm file. Either remove field or migrate using io.realm.internal.Table.addColumn()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_19
    const-string v1, "storeName"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v1, v3, :cond_1a

    .line 308
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid type \'String\' for field \'storeName\' in existing Realm file."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1a
    iget-wide v4, v0, Lio/realm/m$a;->h:J

    invoke-virtual {v2, v4, v5}, Lio/realm/internal/Table;->b(J)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 311
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Field \'storeName\' is required. Either set @Required to field \'storeName\' or migrate using RealmObjectSchema.setNullable()."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1b
    new-instance v0, Lio/realm/exceptions/RealmMigrationNeededException;

    invoke-virtual {p0}, Lio/realm/internal/e;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The \'Installed\' class is missing from the schema for this Realm."

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public b()Lio/realm/t;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 872
    if-ne p0, p1, :cond_1

    .line 886
    :cond_0
    :goto_0
    return v0

    .line 873
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

    .line 874
    :cond_3
    check-cast p1, Lio/realm/m;

    .line 876
    iget-object v2, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 877
    iget-object v3, p1, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 878
    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_4

    .line 880
    :cond_6
    iget-object v2, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 881
    iget-object v3, p1, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v3

    .line 882
    if-eqz v2, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_7

    .line 884
    :cond_9
    iget-object v2, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->c()J

    move-result-wide v2

    iget-object v4, p1, Lio/realm/m;->b:Lio/realm/t;

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

    .line 859
    iget-object v1, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v1}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 860
    iget-object v2, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v2}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/l;->b()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->l()Ljava/lang/String;

    move-result-object v2

    .line 861
    iget-object v3, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v3}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/l;->c()J

    move-result-wide v4

    .line 864
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    .line 865
    mul-int/lit8 v1, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    add-int/2addr v0, v1

    .line 866
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 867
    return v0

    :cond_1
    move v1, v0

    .line 864
    goto :goto_0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 95
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 125
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 110
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$signature()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 166
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$storeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 192
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$systemApp()Z
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 181
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->g:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->g(J)Z

    move-result v0

    return v0
.end method

.method public realmGet$versionCode()I
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 140
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->d:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->f(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 151
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 100
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->a:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->a:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 130
    if-nez p1, :cond_0

    .line 131
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->c:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->c:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 115
    if-nez p1, :cond_0

    .line 116
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->b:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->b:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$signature(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->f:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->f:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$storeName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 197
    if-nez p1, :cond_0

    .line 198
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->h:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->h:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public realmSet$systemApp(Z)V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 186
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->g:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JZ)V

    .line 187
    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 145
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->d:J

    int-to-long v4, p1

    invoke-interface {v0, v2, v3, v4, v5}, Lio/realm/internal/l;->a(JJ)V

    .line 146
    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->a()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 156
    if-nez p1, :cond_0

    .line 157
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->e:J

    invoke-interface {v0, v2, v3}, Lio/realm/internal/l;->c(J)V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lio/realm/m;->b:Lio/realm/t;

    invoke-virtual {v0}, Lio/realm/t;->b()Lio/realm/internal/l;

    move-result-object v0

    iget-object v1, p0, Lio/realm/m;->a:Lio/realm/m$a;

    iget-wide v2, v1, Lio/realm/m$a;->e:J

    invoke-interface {v0, v2, v3, p1}, Lio/realm/internal/l;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 813
    invoke-static {p0}, Lio/realm/ad;->isValid(Lio/realm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    const-string v0, "Invalid object"

    .line 849
    :goto_0
    return-object v0

    .line 816
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Installed = ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    const-string v0, "{icon:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p0}, Lio/realm/m;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/m;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v0, "{packageName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {p0}, Lio/realm/m;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/m;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const-string v0, "{name:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Lio/realm/m;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/realm/m;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string v0, "{versionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {p0}, Lio/realm/m;->realmGet$versionCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v0, "{versionName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lio/realm/m;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/realm/m;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const-string v0, "{signature:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {p0}, Lio/realm/m;->realmGet$signature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lio/realm/m;->realmGet$signature()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string v0, "{systemApp:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {p0}, Lio/realm/m;->realmGet$systemApp()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 843
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string v0, "{storeName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p0}, Lio/realm/m;->realmGet$storeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/realm/m;->realmGet$storeName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 818
    :cond_1
    const-string v0, "null"

    goto/16 :goto_1

    .line 822
    :cond_2
    const-string v0, "null"

    goto/16 :goto_2

    .line 826
    :cond_3
    const-string v0, "null"

    goto/16 :goto_3

    .line 834
    :cond_4
    const-string v0, "null"

    goto :goto_4

    .line 838
    :cond_5
    const-string v0, "null"

    goto :goto_5

    .line 846
    :cond_6
    const-string v0, "null"

    goto :goto_6
.end method
