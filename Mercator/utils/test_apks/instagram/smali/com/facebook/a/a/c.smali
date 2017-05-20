.class Lcom/facebook/a/a/c;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/a/g;->a(Landroid/content/Context;)Lcom/facebook/a/g;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/facebook/c/k;->a(Ljava/lang/String;Z)Lcom/facebook/c/j;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/facebook/c/j;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 40
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    const-string v2, "fb_aa_time_spent_view_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 42
    const-string v2, "fb_aa_time_spent_on_view"

    long-to-double v4, p3

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/facebook/a/g;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 44
    :cond_0
    return-void
.end method
