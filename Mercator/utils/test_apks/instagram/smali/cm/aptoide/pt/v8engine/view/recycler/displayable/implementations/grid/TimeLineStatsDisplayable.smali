.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "TimeLineStatsDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/model/v7/TimelineStats;",
        ">;"
    }
.end annotation


# instance fields
.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private storeTheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/TimelineStats;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 31
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 32
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->storeTheme:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public followersClick(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWERS:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    .line 64
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v4

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->storeTheme:Ljava/lang/String;

    .line 63
    invoke-interface {v1, v2, v4, v5, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 62
    invoke-interface {p1, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public followingClick(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 69
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWING:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    .line 71
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v4

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->storeTheme:Ljava/lang/String;

    .line 70
    invoke-interface {v1, v2, v4, v5, v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 69
    invoke-interface {p1, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method getFollowersText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->timeline_followers:I

    new-array v3, v9, [Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Landroid/text/ParcelableSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v0, v3, v8

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    aput-object v0, v3, v9

    new-array v4, v6, [Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 49
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowers()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createSpan(Ljava/lang/String;[Landroid/text/ParcelableSpan;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method getFollowingText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 54
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->timeline_followed:I

    new-array v3, v9, [Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Landroid/text/ParcelableSpan;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v0, v3, v8

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    aput-object v0, v3, v9

    new-array v4, v6, [Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 58
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/TimelineStats;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats;->getData()Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/TimelineStats$StatusData;->getFollowing()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createSpan(Ljava/lang/String;[Landroid/text/ParcelableSpan;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->timeline_follows_info:I

    return v0
.end method
