.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewOtherVersionsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewOtherVersionsWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewOtherVersionsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;)V
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewOtherVersionsDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    .line 31
    return-void
.end method
