.class public Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ReceiverDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;",
            ">;"
        }
    .end annotation
.end field

.field private resource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->context:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->resource:I

    .line 28
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->devices:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public add(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    move v1, v0

    move v2, v0

    .line 33
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 34
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    .line 35
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->isSameDevice(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->devices:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->notifyDataSetChanged()V

    .line 33
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_1
    if-nez v2, :cond_2

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 44
    :cond_2
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->add(Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    .line 49
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->row_remote_install:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    :cond_0
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->deviceNameText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object p2
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/adapters/ReceiverDeviceAdapter;->appId:Ljava/lang/String;

    .line 61
    return-void
.end method
