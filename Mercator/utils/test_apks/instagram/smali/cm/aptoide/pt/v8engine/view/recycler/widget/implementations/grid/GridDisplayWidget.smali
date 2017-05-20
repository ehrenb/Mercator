.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "GridDisplayWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method static synthetic lambda$bindView$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$null$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method private sendActionEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->image_category:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->imageView:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;)V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;

    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;->getGraphic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 54
    invoke-static {p0, v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;)Lrx/b/b;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->imageView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 83
    invoke-virtual {v2, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 84
    return-void
.end method

.method synthetic lambda$bindView$2(Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;Ljava/lang/Void;)V
    .locals 6

    .prologue
    .line 55
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;->getEvent()Lcm/aptoide/pt/model/v7/Event;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Event;->getName()Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->validateAcceptedName(Lcm/aptoide/pt/model/v7/Event$Name;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->getStoreTheme()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-interface {v2, v1, v3, v4, v5}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 81
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Name:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Event$Name;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->sendActionEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_0
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 65
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->compositeSubscription:Lrx/j/b;

    const-string v3, "com.facebook.katana"

    invoke-virtual {v0, v3}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;Lcm/aptoide/pt/model/v7/Event;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v1, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$null$0(Lcm/aptoide/pt/model/v7/Event;Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 2

    .prologue
    .line 67
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$SocialLinksU;->getFacebookPageURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->sendActionEvent(Ljava/lang/String;)V

    .line 70
    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v0

    goto :goto_0
.end method
