.class final Lcom/b/b/at$2;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/at;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/at;


# direct methods
.method constructor <init>(Lcom/b/b/at;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/b/b/at$2;->a:Lcom/b/b/at;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/b/b/at$2;->a:Lcom/b/b/at;

    invoke-static {v0}, Lcom/b/b/at;->b(Lcom/b/b/at;)V

    .line 99
    return-void
.end method
