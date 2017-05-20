.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewScreenshotsWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private mediaList:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->screenshots_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;->mediaList:Landroid/support/v7/widget/RecyclerView;

    .line 32
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewScreenshotsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getMedia()Lcm/aptoide/pt/model/v7/GetAppMeta$Media;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;->mediaList:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;->itemView:Landroid/view/View;

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 39
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 41
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;->mediaList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 42
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewScreenshotsWidget;->mediaList:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;

    invoke-direct {v2, v0}, Lcm/aptoide/pt/v8engine/adapters/ScreenshotsAdapter;-><init>(Lcm/aptoide/pt/model/v7/GetAppMeta$Media;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 43
    return-void
.end method
