.class public Lcom/google/android/gms/internal/zztl$a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zztl$a$b;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/zztl$a$b;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/zztl$a$b;->c:I

    return-void
.end method
