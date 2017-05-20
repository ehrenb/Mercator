.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "ActiveDownloadsHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private more:Landroid/widget/Button;

.field private title:Landroid/widget/TextView;


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
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->title:Landroid/widget/TextView;

    .line 24
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->more:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->more:Landroid/widget/Button;

    .line 25
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->more:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->pause_all_downloads:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->more:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->more:Landroid/widget/Button;

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ActiveDownloadsHeaderWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ActiveDownloadsHeaderDisplayable;->pauseAllDownloads(Landroid/content/Context;)V

    return-void
.end method
