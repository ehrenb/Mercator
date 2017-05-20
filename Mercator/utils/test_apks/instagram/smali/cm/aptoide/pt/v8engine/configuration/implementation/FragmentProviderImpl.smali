.class public Lcm/aptoide/pt/v8engine/configuration/implementation/FragmentProviderImpl;
.super Ljava/lang/Object;
.source "FragmentProviderImpl.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    invoke-static {p1, p2, p3, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(JLjava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppViewFragment(JLjava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 101
    invoke-static {p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(JLjava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppViewFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 110
    invoke-static {p1, p2, p3, p4, p5}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppViewFragment(Lcm/aptoide/pt/database/realm/MinimalAd;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(Lcm/aptoide/pt/database/realm/MinimalAd;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppViewFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppViewFragment(Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 119
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppViewFragment(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 92
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public newAppsTimelineFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 178
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/AppsTimelineFragment;

    move-result-object v0

    return-object v0
.end method

.method public newCommentGridRecyclerFragment(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 268
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->newInstance(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newCommentGridRecyclerFragmentUrl(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 272
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/CommentListFragment;->newInstanceUrl(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newCreateUserFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/CreateUserFragment;->newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/CreateUserFragment;

    move-result-object v0

    return-object v0
.end method

.method public newDescriptionFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 234
    invoke-static {p1, p2, p3, p4, p5}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;

    move-result-object v0

    return-object v0
.end method

.method public newDescriptionFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 239
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/DescriptionFragment;

    move-result-object v0

    return-object v0
.end method

.method public newDownloadsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;->newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/DownloadsFragment;

    move-result-object v0

    return-object v0
.end method

.method public newExcludedUpdatesFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;->newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/ExcludedUpdatesFragment;

    move-result-object v0

    return-object v0
.end method

.method public newFragmentTopStores()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    move-result-object v0

    return-object v0
.end method

.method public newGetAdsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetAdsFragment;-><init>()V

    return-object v0
.end method

.method public newGetStoreFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;-><init>()V

    return-object v0
.end method

.method public newGetStoreWidgetsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreWidgetsFragment;-><init>()V

    return-object v0
.end method

.method public newHomeFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 75
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    move-result-object v0

    return-object v0
.end method

.method public newLatestReviewsFragment(J)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 131
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;->newInstance(J)Lcm/aptoide/pt/v8engine/fragment/implementations/LatestReviewsFragment;

    move-result-object v0

    return-object v0
.end method

.method public newListAppsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListAppsFragment;-><init>()V

    return-object v0
.end method

.method public newListReviewsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListReviewsFragment;-><init>()V

    return-object v0
.end method

.method public newListStoresFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/ListStoresFragment;-><init>()V

    return-object v0
.end method

.method public newMyStoresFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;-><init>()V

    return-object v0
.end method

.method public newMyStoresSubscribedFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/MyStoresSubscribedFragment;-><init>()V

    return-object v0
.end method

.method public newOtherVersionsFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 202
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;

    move-result-object v0

    return-object v0
.end method

.method public newRateAndReviewsFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 229
    invoke-static/range {p1 .. p7}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    move-result-object v0

    return-object v0
.end method

.method public newRateAndReviewsFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 224
    invoke-static/range {p1 .. p6}, Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;->newInstance(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/viewRateAndCommentReviews/RateAndReviewsFragment;

    move-result-object v0

    return-object v0
.end method

.method public newRollbackFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/RollbackFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newScheduledDownloadsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;

    move-result-object v0

    return-object v0
.end method

.method public newScheduledDownloadsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 219
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;->newInstance(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newScreenshotsViewerFragment(Ljava/util/ArrayList;I)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;->newInstance(Ljava/util/ArrayList;I)Lcm/aptoide/pt/v8engine/fragment/implementations/ScreenshotsViewerFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSearchFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSearchFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;->newInstance(Ljava/lang/String;Z)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSearchPagerTabFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 193
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSearchPagerTabFragment(Ljava/lang/String;ZZ)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 189
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;->newInstance(Ljava/lang/String;ZZ)Lcm/aptoide/pt/v8engine/fragment/implementations/SearchPagerTabFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSendFeedbackFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;->newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SendFeedbackFragment;

    move-result-object v0

    return-object v0
.end method

.method public newSettingsFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/SettingsFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newSocialFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 243
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/SocialFragment;

    move-result-object v0

    return-object v0
.end method

.method public newStoreFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->newInstance(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    move-result-object v0

    return-object v0
.end method

.method public newStoreFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 70
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    move-result-object v0

    return-object v0
.end method

.method public newStoreFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 66
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    move-result-object v0

    return-object v0
.end method

.method public newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 57
    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;

    move-result-object v0

    return-object v0
.end method

.method public newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 136
    invoke-static {p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 142
    invoke-static {p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/StoreTabGridRecyclerFragment;->newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public newSubscribedStoresFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 184
    invoke-static {p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;->newInstance(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/MyStoresFragment;

    move-result-object v0

    return-object v0
.end method

.method public newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;JLjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 257
    invoke-static {p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->newInstance(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;JLjava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    move-result-object v0

    return-object v0
.end method

.method public newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;Ljava/lang/String;Ljava/lang/String;J)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 263
    invoke-static {p1, p2, p3, p4, p5}, Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;->newInstance(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;Ljava/lang/String;Ljava/lang/String;J)Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment;

    move-result-object v0

    return-object v0
.end method

.method public newUpdatesFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;->newInstance()Lcm/aptoide/pt/v8engine/fragment/implementations/UpdatesFragment;

    move-result-object v0

    return-object v0
.end method
