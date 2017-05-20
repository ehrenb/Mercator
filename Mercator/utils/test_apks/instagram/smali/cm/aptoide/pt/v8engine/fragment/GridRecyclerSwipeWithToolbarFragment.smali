.class public Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;
.source "GridRecyclerSwipeWithToolbarFragment.java"


# static fields
.field public static final TITLE_KEY:Ljava/lang/String; = "TITLE_KEY"


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->recycler_swipe_fragment_with_toolbar:I

    return v0
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "TITLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->title:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 41
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 44
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 35
    const-string v0, "TITLE_KEY"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->title:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/Translator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->logo_toolbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(I)V

    .line 26
    return-void
.end method
