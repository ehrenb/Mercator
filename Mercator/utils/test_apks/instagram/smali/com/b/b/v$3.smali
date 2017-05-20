.class final Lcom/b/b/v$3;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/v;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/v;


# direct methods
.method constructor <init>(Lcom/b/b/v;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/b/b/v$3;->a:Lcom/b/b/v;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/b/b/v$3;->a:Lcom/b/b/v;

    invoke-static {v0}, Lcom/b/b/v;->d(Lcom/b/b/v;)V

    .line 297
    return-void
.end method
