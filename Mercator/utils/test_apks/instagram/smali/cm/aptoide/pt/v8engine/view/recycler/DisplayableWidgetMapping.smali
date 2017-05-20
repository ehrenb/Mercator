.class public Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;
.super Ljava/lang/Object;
.source "DisplayableWidgetMapping.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;


# instance fields
.field private cachedDisplayables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private displayableClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation
.end field

.field private viewTypeMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;",
            ">;"
        }
    .end annotation
.end field

.field private widgetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->TAG:Ljava/lang/String;

    .line 156
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->instance:Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->viewTypeMapping:Ljava/util/Map;

    .line 163
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->createMapping()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->parseMappings(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->viewTypeMapping:Ljava/util/Map;

    .line 375
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->displayableClass:Ljava/lang/Class;

    .line 376
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->widgetClass:Ljava/lang/Class;

    .line 377
    return-void
.end method

.method public static getInstance()Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->instance:Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    return-object v0
.end method

.method private newWidget(Landroid/view/View;)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 394
    new-array v0, v3, [Ljava/lang/Class;

    .line 395
    const-class v1, Landroid/view/View;

    aput-object v1, v0, v4

    .line 397
    :try_start_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->widgetClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 400
    const-string v1, "Error instantiating widget \'%s\'"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->widgetClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 401
    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createMapping()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 178
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/EmptyWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/EmptyDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AddMoreStoresWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AddMoreStoresDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SubscribedStoreWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SubscribedStoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreGridHeaderWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FooterRowWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FooterRowDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAdWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAdDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppListWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppListDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AppBrickListWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AppBrickListDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/InstalledAppDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdateWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdateDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/UpdatesHeaderWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/UpdatesHeaderDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/ArticleWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FeatureWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FeatureDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/StoreLatestAppsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/VideoWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SimilarWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/RecommendationWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialArticleWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialVideoWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialStoreLatestAppsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialInstallWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/SocialRecommendationWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/SearchAdWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/SearchAdDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/AdultRowWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/AdultRowDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ProgressBarWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/ProgressBarDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewCommentsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDescriptionWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDescriptionDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewDeveloperWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewDeveloperDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateAndReviewsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateAndCommentsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewOtherVersionsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateResultsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewRateResultsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewStoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewSuggestedAppWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewSuggestedAppDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OtherVersionWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OtherVersionDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentWidget;

    const-class v3, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewCommentDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ScheduledDownloadWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ScheduledDownloadDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CompletedDownloadWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RowReviewDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CommentWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CommentDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreWidget;

    const-class v3, Lcm/aptoide/pt/viewRateAndCommentReviews/CommentsReadMoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreLatestCommentsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/StoreAddCommentWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/CreateStoreWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MyStoreWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RecommendedStoreDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/OfficialAppWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/OfficialAppDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/FollowUserWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MessageWhiteBgWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    const-class v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;

    const-class v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 358
    return-object v0
.end method

.method public getCachedDisplayables()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->cachedDisplayables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 408
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 410
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->viewTypeMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    .line 411
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->newDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->cachedDisplayables:Ljava/util/List;

    .line 415
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->cachedDisplayables:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayableClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->displayableClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getViewTypeMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->viewTypeMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getWidgetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->widgetClass:Ljava/lang/Class;

    return-object v0
.end method

.method public newDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    .locals 5

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->displayableClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 366
    const-string v1, "Error instantiating displayable \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->displayableClass:Ljava/lang/Class;

    .line 367
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newWidget(Landroid/view/View;I)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
    .locals 6

    .prologue
    .line 384
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->viewTypeMapping:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->newWidget(Landroid/view/View;)Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no widget for \'%s\' viewType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDid you forget to add the mapping to DisplayableWidgetMapping enum??"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseMappings(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;

    .line 168
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->viewTypeMapping:Ljava/util/Map;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/DisplayableWidgetMapping;->newDisplayable()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;->getViewLayout()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method
