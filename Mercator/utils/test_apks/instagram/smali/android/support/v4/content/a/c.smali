.class Landroid/support/v4/content/a/c;
.super Ljava/lang/Object;
.source "ConfigurationHelperHoneycombMr2.java"


# direct methods
.method static a(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    return v0
.end method

.method static b(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    return v0
.end method

.method static c(Landroid/content/res/Resources;)I
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method
