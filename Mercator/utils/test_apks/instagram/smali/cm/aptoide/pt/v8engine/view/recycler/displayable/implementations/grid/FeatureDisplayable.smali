.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "FeatureDisplayable.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private avatarResource:I

.field private date:Ljava/util/Date;

.field private dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

.field private spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleResource:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 38
    iput p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->avatarResource:I

    .line 39
    iput p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->titleResource:I

    .line 40
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->thumbnailUrl:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->url:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->appName:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->title:Ljava/lang/String;

    .line 44
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->date:Ljava/util/Date;

    .line 45
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    .line 46
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    .line 47
    return-void
.end method

.method public static from(Lcm/aptoide/pt/model/v7/timeline/Feature;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getName()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/listapp/App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/listapp/App;->getId()J

    .line 57
    :cond_0
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;

    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getIcon()I

    move-result v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->fragment_social_timeline_aptoide_team:I

    .line 58
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/timeline/Feature;->getDate()Ljava/util/Date;

    move-result-object v7

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;)V

    return-object v0
.end method


# virtual methods
.method public getAppText(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->spannableFactory:Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->appName:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 86
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->appName:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 85
    invoke-virtual {v0, v1, v4, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createStyleSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarResource()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->avatarResource:I

    return v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getMarginWidth(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$bool;->is_this_a_tablet_device:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-static {p2}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getCachedDisplayWidth(I)I

    move-result v0

    .line 69
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 70
    int-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 72
    :cond_1
    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->dateCalculator:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->date:Ljava/util/Date;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/DateCalculator;->getTimeSinceDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->titleResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleResource()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->titleResource:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_feature:I

    return v0
.end method
