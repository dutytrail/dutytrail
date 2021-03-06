package com.joantolos.kata.songs.api.remote;

import com.joantolos.kata.songs.api.domain.entity.RetrieveOutput;
import feign.Headers;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient("COUNTRY-SONGS-API")
public interface CountryAPIClient {

    @Headers("include-remote:false")
    @RequestMapping(method = RequestMethod.GET, value = "/song/all")
    RetrieveOutput getAllSongs();
}
