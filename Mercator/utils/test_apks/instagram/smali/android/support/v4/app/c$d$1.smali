.class Landroid/support/v4/app/c$d$1;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"

# interfaces
.implements Landroid/support/v4/app/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/c$d;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

.field final synthetic b:Landroid/support/v4/app/c$d;


# direct methods
.method constructor <init>(Landroid/support/v4/app/c$d;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Landroid/support/v4/app/c$d$1;->b:Landroid/support/v4/app/c$d;

    iput-object p2, p0, Landroid/support/v4/app/c$d$1;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/app/c$d$1;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 128
    return-void
.end method
