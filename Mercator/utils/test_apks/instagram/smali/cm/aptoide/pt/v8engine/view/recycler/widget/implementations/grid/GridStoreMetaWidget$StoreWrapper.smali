.class Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;
.super Ljava/lang/Object;
.source "GridStoreMetaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreWrapper"
.end annotation


# instance fields
.field private final store:Lcm/aptoide/pt/model/v7/store/Store;

.field private storeSubscribed:Z


# direct methods
.method constructor <init>(Lcm/aptoide/pt/model/v7/store/Store;Z)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->store:Lcm/aptoide/pt/model/v7/store/Store;

    .line 267
    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->storeSubscribed:Z

    .line 268
    return-void
.end method


# virtual methods
.method public getStore()Lcm/aptoide/pt/model/v7/store/Store;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->store:Lcm/aptoide/pt/model/v7/store/Store;

    return-object v0
.end method

.method public isStoreSubscribed()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->storeSubscribed:Z

    return v0
.end method

.method public setStoreSubscribed(Z)V
    .locals 0

    .prologue
    .line 263
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->storeSubscribed:Z

    return-void
.end method
