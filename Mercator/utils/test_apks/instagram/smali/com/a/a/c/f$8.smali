.class Lcom/a/a/c/f$8;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/f;->a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/e;

.field final synthetic b:Lcom/a/a/c/f;


# direct methods
.method constructor <init>(Lcom/a/a/c/f;Lcom/a/a/c/e;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/a/a/c/f$8;->b:Lcom/a/a/c/f;

    iput-object p2, p0, Lcom/a/a/c/f$8;->a:Lcom/a/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/a/a/c/f$8;->a:Lcom/a/a/c/e;

    invoke-virtual {v0}, Lcom/a/a/c/e;->a()V

    .line 1015
    return-void
.end method
