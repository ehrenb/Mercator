.class final Lcom/b/b/bf$3;
.super Lcom/b/b/dh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/bf;


# direct methods
.method constructor <init>(Lcom/b/b/bf;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/b/b/bf$3;->a:Lcom/b/b/bf;

    invoke-direct {p0}, Lcom/b/b/dh;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/b/b/ax;->a()Lcom/b/b/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/b/ax;->d()V

    .line 97
    return-void
.end method
