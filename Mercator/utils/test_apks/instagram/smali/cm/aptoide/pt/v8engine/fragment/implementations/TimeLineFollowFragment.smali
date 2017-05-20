.class public Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;
.super Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;
.source "TimeLineFollowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$BundleKeys;,
        Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;
    }
.end annotation


# instance fields
.field private final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private cardUid:Ljava/lang/String;

.field private endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

.field private numberOfLikes:Ljava/lang/Long;

.field private openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;-><init>()V

    .line 43
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 45
    return-void
.end method

.method static synthetic lambda$load$2(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static newInstance(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;JLjava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$TimeLineFollowFragment$FollowFragmentOpenMode:[I

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    const-string v1, "OPEN_MODE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1

    .line 52
    :pswitch_0
    const-string v1, "TITLE_KEY"

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_followers_fragment_title:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    .line 52
    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v1, "TITLE_KEY"

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_following_fragment_title:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    .line 56
    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static newInstance(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;Ljava/lang/String;Ljava/lang/String;J)Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;
    .locals 5

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "TITLE_KEY"

    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->likes:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "OPEN_MODE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 72
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "CARDUID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "NUMBER_LIKES"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 75
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->bindViews(Landroid/view/View;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->setHasOptionsMenu(Z)V

    .line 108
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public getFooterMessage(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$TimeLineFollowFragment$FollowFragmentOpenMode:[I

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    const-string v0, ""

    .line 202
    :goto_0
    return-object v0

    .line 191
    :pswitch_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->private_followers_message:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_1
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->private_following_message:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_2
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_users_private:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHeaderMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$TimeLineFollowFragment$FollowFragmentOpenMode:[I

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 182
    const-string v0, ""

    .line 184
    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_share_bar_followers:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_1
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_share_bar_following:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$load$0([ILjava/util/LinkedList;Lcm/aptoide/pt/model/v7/GetFollowers;)V
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/GetFollowers;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Datalist;->getHidden()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 143
    invoke-virtual {p3}, Lcm/aptoide/pt/model/v7/GetFollowers;->getDatalist()Lcm/aptoide/pt/model/v7/Datalist;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Datalist;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;

    .line 144
    new-instance v2, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    invoke-direct {v2, v0, v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/FollowUserDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetFollowers$TimelineUser;Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;)V

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->addDisplayables(Ljava/util/List;)V

    .line 147
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 148
    return-void
.end method

.method synthetic lambda$load$1(Ljava/util/LinkedList;Lcm/aptoide/pt/model/v7/GetFollowers;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getHeaderMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 155
    return v2
.end method

.method synthetic lambda$load$3([I)V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getFooterMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MessageWhiteBgDisplayable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->addDisplayable(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V

    return-void
.end method

.method public load(ZZLandroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->load(ZZLandroid/os/Bundle;)V

    .line 117
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 120
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$TimeLineFollowFragment$FollowFragmentOpenMode:[I

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is a case (openMode) that it is not being handled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 123
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;->of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowersRequest;

    move-result-object v2

    .line 138
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 140
    new-array v9, v6, [I

    aput v4, v9, v4

    .line 141
    invoke-static {p0, v9, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[ILjava/util/LinkedList;)Lrx/b/b;

    move-result-object v3

    .line 151
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    sget-object v4, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWERS:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    sget-object v4, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;->FOLLOWING:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    if-ne v1, v4, :cond_3

    .line 153
    :cond_1
    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;Ljava/util/LinkedList;)Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;

    move-result-object v7

    .line 159
    :goto_1
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 160
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 161
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getAdapter()Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$3;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v4

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v8}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/base/BaseAdapter;Lcm/aptoide/pt/dataprovider/ws/v7/V7;Lrx/b/b;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;IZLcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener$BooleanAction;Lrx/b/a;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-static {p0, v9}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;[I)Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->setOnEndOfListReachedListener(Lrx/b/a;)V

    .line 165
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 166
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->onLoadMore(Z)V

    .line 170
    :goto_2
    return-void

    .line 126
    :pswitch_1
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 127
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowingRequest;->of(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetFollowingRequest;

    move-result-object v2

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 131
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 132
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->cardUid:Ljava/lang/String;

    .line 130
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetUserLikesRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetUserLikesRequest;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$m;)V

    goto :goto_2

    :cond_3
    move-object v7, v8

    goto :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->loadExtras(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "OPEN_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->openMode:Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;

    .line 87
    const-string v0, "CARDUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->cardUid:Ljava/lang/String;

    .line 88
    const-string v0, "NUMBER_LIKES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->numberOfLikes:Ljava/lang/Long;

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 93
    sget v0, Lcm/aptoide/pt/v8engine/R$menu;->menu_empty:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->endlessRecyclerOnScrollListener:Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/listeners/EndlessRecyclerOnScrollListener;->removeListeners()V

    .line 112
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 98
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->onBackPressed()V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/GridRecyclerSwipeWithToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
