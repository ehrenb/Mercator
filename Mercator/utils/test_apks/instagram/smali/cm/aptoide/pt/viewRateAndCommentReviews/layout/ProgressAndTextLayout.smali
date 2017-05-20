.class Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;
.super Ljava/lang/Object;
.source "ProgressAndTextLayout.java"


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(IILandroid/view/View;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;->progressBar:Landroid/widget/ProgressBar;

    .line 15
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;->text:Landroid/widget/TextView;

    .line 16
    return-void
.end method


# virtual methods
.method public setup(II)V
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 20
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 21
    iget-object v0, p0, Lcm/aptoide/pt/viewRateAndCommentReviews/layout/ProgressAndTextLayout;->text:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
