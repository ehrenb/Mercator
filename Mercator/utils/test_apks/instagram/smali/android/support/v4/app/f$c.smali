.class Landroid/support/v4/app/f$c;
.super Landroid/support/v4/app/f;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/support/v4/app/f$c;->a:Landroid/support/v4/app/i;

    .line 384
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v4/app/f$c;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
