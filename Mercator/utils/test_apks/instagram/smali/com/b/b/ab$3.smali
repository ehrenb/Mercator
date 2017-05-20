.class final Lcom/b/b/ab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/b/ab;->b(Lcom/b/b/ac;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ab;


# direct methods
.method constructor <init>(Lcom/b/b/ab;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/b/b/ab$3;->a:Lcom/b/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/b/b/ab$3;->a:Lcom/b/b/ab;

    invoke-static {v0}, Lcom/b/b/ab;->b(Lcom/b/b/ab;)V

    .line 162
    return-void
.end method
