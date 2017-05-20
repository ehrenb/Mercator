.class Landroid/support/v4/app/f$a;
.super Landroid/support/v4/app/f;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/g;


# direct methods
.method constructor <init>(Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    .line 334
    iput-object p1, p0, Landroid/support/v4/app/f$a;->a:Landroid/support/v4/app/g;

    .line 335
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/app/f$a;->a:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
