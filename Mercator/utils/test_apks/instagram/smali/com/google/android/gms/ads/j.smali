.class public final Lcom/google/android/gms/ads/j;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/j$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/j$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/j$a;->a(Lcom/google/android/gms/ads/j$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/j;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/j$a;Lcom/google/android/gms/ads/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/j;-><init>(Lcom/google/android/gms/ads/j$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/j;->a:Z

    return v0
.end method
