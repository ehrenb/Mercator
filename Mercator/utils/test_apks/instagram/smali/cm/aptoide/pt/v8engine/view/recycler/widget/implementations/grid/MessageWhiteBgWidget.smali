.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MessageWhiteBgWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "MessageWhiteBgWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private message:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MessageWhiteBgWidget;->message:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MessageWhiteBgWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;)V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MessageWhiteBgWidget;->message:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/MessageWhiteBgWidget;->message:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
