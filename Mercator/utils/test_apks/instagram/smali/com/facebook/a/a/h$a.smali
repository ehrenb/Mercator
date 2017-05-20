.class public Lcom/facebook/a/a/h$a;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/app/Activity;)Lcom/facebook/a/a/h;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    if-nez v0, :cond_0

    move-object v0, v3

    .line 145
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 120
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_2

    const-string v5, "_fbSourceApplicationHasBeenSet"

    .line 128
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    const-string v5, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-static {v4}, Lbolts/a;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v5

    .line 133
    if-eqz v5, :cond_2

    .line 135
    const-string v1, "referer_app_link"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    const-string v0, "package"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 144
    :cond_2
    :goto_1
    const-string v5, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    new-instance v2, Lcom/facebook/a/a/h;

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/a/a/h;-><init>(Ljava/lang/String;ZLcom/facebook/a/a/h$1;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
