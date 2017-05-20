.class Lcom/liulishuo/filedownloader/aa$a;
.super Ljava/lang/Object;
.source "QueuesHandler.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/aa$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/liulishuo/filedownloader/aa$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/liulishuo/filedownloader/aa$a;->a:Ljava/lang/ref/WeakReference;

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/liulishuo/filedownloader/aa$1;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/aa$a;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/liulishuo/filedownloader/a$a;
    .locals 0

    .prologue
    .line 258
    iput p1, p0, Lcom/liulishuo/filedownloader/aa$a;->b:I

    .line 259
    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/a;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/liulishuo/filedownloader/aa$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/filedownloader/aa$b;

    iget v1, p0, Lcom/liulishuo/filedownloader/aa$a;->b:I

    invoke-static {v0, v1}, Lcom/liulishuo/filedownloader/aa$b;->a(Lcom/liulishuo/filedownloader/aa$b;I)V

    .line 267
    :cond_0
    return-void
.end method
