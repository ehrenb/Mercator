.class Landroid/support/design/internal/c$f;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/support/v7/view/menu/j;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/j;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Landroid/support/design/internal/c$f;->b:Landroid/support/v7/view/menu/j;

    .line 621
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/j;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Landroid/support/design/internal/c$f;->b:Landroid/support/v7/view/menu/j;

    return-object v0
.end method
