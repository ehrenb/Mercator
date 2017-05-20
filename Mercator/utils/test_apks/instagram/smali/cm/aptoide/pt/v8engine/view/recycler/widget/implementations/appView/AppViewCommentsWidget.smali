.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewCommentsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewCommentsWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private writeCommentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method static synthetic lambda$bindView$0(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "TO DO"

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->write_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewCommentsWidget;->writeCommentView:Landroid/view/View;

    .line 29
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewCommentsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewCommentsDisplayable;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewCommentsWidget;->writeCommentView:Landroid/view/View;

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewCommentsWidget$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
