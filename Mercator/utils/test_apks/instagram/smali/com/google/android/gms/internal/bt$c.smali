.class public Lcom/google/android/gms/internal/bt$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/google/android/gms/internal/ju;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ju;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bt$c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/bt$c;->b:Lcom/google/android/gms/internal/ju;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt$c;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bt$c;->b:Lcom/google/android/gms/internal/ju;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bt$c;->a:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/android/gms/internal/ca;
    .locals 0

    return-object p0
.end method
