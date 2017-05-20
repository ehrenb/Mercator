.class Leu/chainfire/libsuperuser/b$c$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/b$c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/libsuperuser/b$c;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/b$c;)V
    .locals 0

    .prologue
    .line 1279
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$c$2;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$c$2;->a:Leu/chainfire/libsuperuser/b$c;

    invoke-static {v0}, Leu/chainfire/libsuperuser/b$c;->b(Leu/chainfire/libsuperuser/b$c;)V

    .line 1283
    return-void
.end method
