.class public Lcm/aptoide/pt/utils/AptoideUtils$ResourseU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourseU"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1094
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(I)I
    .locals 1

    .prologue
    .line 1090
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getResString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
