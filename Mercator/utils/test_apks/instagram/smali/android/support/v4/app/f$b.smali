.class Landroid/support/v4/app/f$b;
.super Landroid/support/v4/app/f;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/h;


# direct methods
.method constructor <init>(Landroid/support/v4/app/h;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    .line 356
    iput-object p1, p0, Landroid/support/v4/app/f$b;->a:Landroid/support/v4/app/h;

    .line 357
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v4/app/f$b;->a:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
