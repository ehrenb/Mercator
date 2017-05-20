.class public final Lcom/google/android/gms/internal/f$c;
.super Lcom/google/android/gms/internal/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/r",
        "<",
        "Lcom/google/android/gms/internal/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f$c;->a:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/f$c;->b:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/f$c;->ah:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/q;)Lcom/google/android/gms/internal/f$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/q;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/internal/q;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/q;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/f$c;->a:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/q;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/f$c;->b:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/zzart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/f$c;->a:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/f$c;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->a(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/f$c;->b:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/f$c;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->a(I[B)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/r;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/f$c;->a:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/f$c;->a:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/f$c;->b:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/f$c;->b:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/q;)Lcom/google/android/gms/internal/x;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/f$c;->a(Lcom/google/android/gms/internal/q;)Lcom/google/android/gms/internal/f$c;

    move-result-object v0

    return-object v0
.end method
