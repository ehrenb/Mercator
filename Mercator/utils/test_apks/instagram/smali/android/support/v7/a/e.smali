.class public Landroid/support/v7/a/e;
.super Landroid/support/v4/app/u;
.source "AppCompatActivity.java"

# interfaces
.implements Landroid/support/v4/app/bb$a;
.implements Landroid/support/v7/a/f;


# instance fields
.field private mDelegate:Landroid/support/v7/a/g;

.field private mEatKeyUpEvent:Z

.field private mResources:Landroid/content/res/Resources;

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/u;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/a/e;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/g;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 532
    invoke-static {p1}, Landroid/support/v4/view/g;->b(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, -0x7001

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 535
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 536
    if-nez v1, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/a/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    iput-boolean v0, p0, Landroid/support/v7/a/e;->mEatKeyUpEvent:Z

    .line 547
    :goto_0
    return v0

    .line 542
    :cond_0
    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v7/a/e;->mEatKeyUpEvent:Z

    if-eqz v1, :cond_1

    .line 543
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/a/e;->mEatKeyUpEvent:Z

    goto :goto_0

    .line 547
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/u;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroid/support/v7/a/g;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v7/a/e;->mDelegate:Landroid/support/v7/a/g;

    if-nez v0, :cond_0

    .line 525
    invoke-static {p0, p0}, Landroid/support/v7/a/g;->a(Landroid/app/Activity;Landroid/support/v7/a/f;)Landroid/support/v7/a/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/e;->mDelegate:Landroid/support/v7/a/g;

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/e;->mDelegate:Landroid/support/v7/a/g;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroid/support/v7/a/b$a;
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->h()Landroid/support/v7/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/a/e;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/support/v7/widget/bl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Landroid/support/v7/widget/bl;

    invoke-super {p0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/bl;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/support/v7/a/e;->mResources:Landroid/content/res/Resources;

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/e;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/e;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSupportActionBar()Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->a()Landroid/support/v7/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 436
    invoke-static {p0}, Landroid/support/v4/app/ah;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->f()V

    .line 251
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/u;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/content/res/Configuration;)V

    .line 165
    iget-object v0, p0, Landroid/support/v7/a/e;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 168
    invoke-super {p0}, Landroid/support/v4/app/u;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroid/support/v7/a/e;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/support/v7/a/e;->onSupportContentChanged()V

    .line 476
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/support/v7/a/g;->i()V

    .line 76
    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {v0}, Landroid/support/v7/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/a/e;->mThemeId:I

    if-eqz v0, :cond_0

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/a/e;->mThemeId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/a/e;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 88
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/u;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void

    .line 85
    :cond_1
    iget v0, p0, Landroid/support/v7/a/e;->mThemeId:I

    invoke-virtual {p0, v0}, Landroid/support/v7/a/e;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/bb;)V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p1, p0}, Landroid/support/v4/app/bb;->a(Landroid/app/Activity;)Landroid/support/v4/app/bb;

    .line 354
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/support/v4/app/u;->onDestroy()V

    .line 213
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->g()V

    .line 214
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 198
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/u;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    .line 203
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/support/v7/a/a;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/a/e;->onSupportNavigateUp()Z

    move-result v0

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 499
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/u;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 510
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/u;->onPanelClosed(ILandroid/view/Menu;)V

    .line 511
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/u;->onPostCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->b(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/support/v4/app/u;->onPostResume()V

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->e()V

    .line 177
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/bb;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/support/v4/app/u;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 516
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->c(Landroid/os/Bundle;)V

    .line 517
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/support/v4/app/u;->onStart()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->c()V

    .line 183
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/support/v4/app/u;->onStop()V

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->d()V

    .line 189
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/b;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/b;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0, v0}, Landroid/support/v7/a/e;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-static {p0}, Landroid/support/v4/app/bb;->a(Landroid/content/Context;)Landroid/support/v4/app/bb;

    move-result-object v0

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v7/a/e;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/bb;)V

    .line 404
    invoke-virtual {p0, v0}, Landroid/support/v7/a/e;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/bb;)V

    .line 405
    invoke-virtual {v0}, Landroid/support/v4/app/bb;->a()V

    .line 408
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    const/4 v0, 0x1

    .line 421
    :goto_1
    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {p0}, Landroid/support/v7/a/e;->finish()V

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/a/e;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 421
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/u;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->b(I)V

    .line 144
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/g;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 134
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/u;->setTheme(I)V

    .line 95
    iput p1, p0, Landroid/support/v7/a/e;->mThemeId:I

    .line 96
    return-void
.end method

.method public startSupportActionMode(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/g;->f()V

    .line 243
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 469
    invoke-static {p0, p1}, Landroid/support/v4/app/ah;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/support/v7/a/e;->getDelegate()Landroid/support/v7/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/g;->c(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 453
    invoke-static {p0, p1}, Landroid/support/v4/app/ah;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
