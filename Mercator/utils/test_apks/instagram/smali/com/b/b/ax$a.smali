.class final Lcom/b/b/ax$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/b/ax;


# direct methods
.method public constructor <init>(Lcom/b/b/ax;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/b/b/ax$a;->a:Lcom/b/b/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/b/b/ax$a;->a:Lcom/b/b/ax;

    invoke-static {v0, p1}, Lcom/b/b/ax;->a(Lcom/b/b/ax;Landroid/location/Location;)Landroid/location/Location;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/b/b/ax$a;->a:Lcom/b/b/ax;

    invoke-static {v0}, Lcom/b/b/ax;->c(Lcom/b/b/ax;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 312
    const/4 v0, 0x4

    invoke-static {}, Lcom/b/b/ax;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Max location reports reached, stopping"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/b/b/ax$a;->a:Lcom/b/b/ax;

    invoke-static {v0}, Lcom/b/b/ax;->b(Lcom/b/b/ax;)V

    .line 315
    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 293
    return-void
.end method
