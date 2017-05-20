.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "CardDisplayable.java"


# instance fields
.field private timelineCard:Lcm/aptoide/pt/model/v7/timeline/TimelineCard;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 19
    return-void
.end method

.method constructor <init>(Lcm/aptoide/pt/model/v7/timeline/TimelineCard;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;->timelineCard:Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    .line 23
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getMarginWidth(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$bool;->is_this_a_tablet_device:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-static {p2}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getCachedDisplayWidth(I)I

    move-result v0

    .line 40
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 41
    int-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 43
    :cond_1
    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getTimelineCard()Lcm/aptoide/pt/model/v7/timeline/TimelineCard;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;->timelineCard:Lcm/aptoide/pt/model/v7/timeline/TimelineCard;

    return-object v0
.end method

.method public abstract share(Landroid/content/Context;Z)V
.end method
