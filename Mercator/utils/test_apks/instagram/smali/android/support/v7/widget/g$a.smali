.class Landroid/support/v7/widget/g$a;
.super Landroid/support/v7/widget/bh;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/support/v7/widget/bh;-><init>()V

    .line 242
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/support/v7/widget/bh;->a()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/g$a;->a:Landroid/content/res/ColorStateList;

    .line 248
    return-void
.end method
