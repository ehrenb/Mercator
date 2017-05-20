.class public final Lcom/google/android/gms/internal/d$a;
.super Lcom/google/android/gms/internal/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/internal/d$b;

.field public b:Lcom/google/android/gms/internal/d$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/x;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/d$a;->a()Lcom/google/android/gms/internal/d$a;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzarz;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d$a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/x;[B)Lcom/google/android/gms/internal/x;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/d$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/d$a;->ah:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/internal/q;)Lcom/google/android/gms/internal/d$a;
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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/q;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/d$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/x;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/d$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/x;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->a(ILcom/google/android/gms/internal/x;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->a(ILcom/google/android/gms/internal/x;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/x;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->a:Lcom/google/android/gms/internal/d$b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->c(ILcom/google/android/gms/internal/x;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/d$a;->b:Lcom/google/android/gms/internal/d$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->c(ILcom/google/android/gms/internal/x;)I

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/d$a;->a(Lcom/google/android/gms/internal/q;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    return-object v0
.end method
