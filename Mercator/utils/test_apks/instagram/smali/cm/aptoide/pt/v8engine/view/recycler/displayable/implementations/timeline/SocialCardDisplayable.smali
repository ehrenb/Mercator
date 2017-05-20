.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.source "SocialCardDisplayable.java"


# instance fields
.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private liked:Z

.field private final numberOfComments:J

.field private final numberOfLikes:J

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field protected store:Lcm/aptoide/pt/model/v7/store/Store;

.field private user:Lcm/aptoide/pt/model/v7/Comment$User;

.field private userLikes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;"
        }
    .end annotation
.end field

.field private userSharer:Lcm/aptoide/pt/model/v7/Comment$User;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>()V

    .line 34
    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfLikes:J

    .line 35
    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfComments:J

    .line 36
    return-void
.end method

.method constructor <init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;JJLcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/model/v7/Comment$User;Lcm/aptoide/pt/model/v7/Comment$User;ZLjava/util/List;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/timeline/TimelineCard;",
            "JJ",
            "Lcm/aptoide/pt/model/v7/store/Store;",
            "Lcm/aptoide/pt/model/v7/Comment$User;",
            "Lcm/aptoide/pt/model/v7/Comment$User;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;",
            "Ljava/util/Date;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;-><init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V

    .line 43
    iput-object p11, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->date:Ljava/util/Date;

    .line 44
    iput-boolean p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->liked:Z

    .line 45
    iput-object p13, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 46
    iput-wide p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfLikes:J

    .line 47
    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfComments:J

    .line 48
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->userSharer:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 49
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    .line 50
    iput-object p10, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->userLikes:Ljava/util/List;

    .line 51
    iput-object p12, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 52
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->store:Lcm/aptoide/pt/model/v7/store/Store;

    .line 53
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateCalculator()Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    return-object v0
.end method

.method public getNumberOfComments()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfComments:J

    return-wide v0
.end method

.method public getNumberOfLikes()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfLikes:J

    return-wide v0
.end method

.method public getSharedBy(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_shared_by:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->black:I

    .line 62
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getSpannableFactory()Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    return-object v0
.end method

.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->user:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public getUserLikes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/timeline/UserTimeline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->userLikes:Ljava/util/List;

    return-object v0
.end method

.method public getUserSharer()Lcm/aptoide/pt/model/v7/Comment$User;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->userSharer:Lcm/aptoide/pt/model/v7/Comment$User;

    return-object v0
.end method

.method public isLiked()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->liked:Z

    return v0
.end method

.method public abstract like(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public likesPreviewClick(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)V
    .locals 6

    .prologue
    .line 68
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->LIKE_PREVIEW:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    const-string v2, "default"

    .line 70
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    move-result-object v3

    invoke-interface {v3}, Lcm/aptoide/pt/model/v7/timeline/TimelineCard;->getCardId()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->numberOfLikes:J

    .line 69
    invoke-interface/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;Ljava/lang/String;Ljava/lang/String;J)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 68
    invoke-interface {p1, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 71
    return-void
.end method
