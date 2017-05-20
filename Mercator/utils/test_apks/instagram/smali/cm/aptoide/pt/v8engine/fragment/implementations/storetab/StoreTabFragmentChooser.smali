.class public Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;
.super Ljava/lang/Object;
.source "StoreTabFragmentChooser.java"


# static fields
.field private static fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static choose(Lcm/aptoide/pt/model/v7/Event$Name;)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Name:[I

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event$Name;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not implemented!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :pswitch_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newListAppsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 22
    :pswitch_1
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newGetStoreFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newMyStoresSubscribedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_3
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newMyStoresFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_4
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newGetStoreWidgetsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_5
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newListReviewsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_6
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newGetAdsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_7
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser;->fragmentProvider:Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newListStoresFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static validateAcceptedName(Lcm/aptoide/pt/model/v7/Event$Name;)Z
    .locals 2

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 43
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabFragmentChooser$1;->$SwitchMap$cm$aptoide$pt$model$v7$Event$Name:[I

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/Event$Name;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
